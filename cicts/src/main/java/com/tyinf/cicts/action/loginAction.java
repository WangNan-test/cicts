package com.tyinf.cicts.action;

import com.tyinf.cicts.service.ILoginService;
import com.tyinf.cicts.service.IUserService;
import com.tyinf.cicts.util.action.AbstractAction;
import com.tyinf.cicts.vo.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
@RequestMapping(value = "/login")
public class loginAction extends AbstractAction {
    @Autowired
    private ILoginService loginService;
    @Autowired
    private IUserService userService;
    /**
     * 用户注册
     * @param user  用户注册的信息
     * @return 注册的状态
     */
    @ResponseBody
    @RequestMapping(value = "/reg")
    public int  register(User user ,String password_confirm){
        Md5Hash md5=new Md5Hash(user.getPassword(),user.getPassword(),3);
        String password = md5.toString();
        Md5Hash md51=new Md5Hash(password_confirm,password_confirm,3);
        String password1 = md51.toString();
        user.setPassword(password);
        if(user.getPassword().equals(password1)){
            try {
                return loginService.register(user);
            } catch (Exception e) {
               return 0;
            }
        }else{
            return 3;
        }
    }

    /**
     * 用户登陆
     * @param phone 用户登陆的手机号
     * @param password  用户登陆的密码
     * @param ck    是否选择记住密码

     * @throws IOException
     */
    @RequestMapping(value="/login")
    @ResponseBody
    public int login(String phone, String password, String ck ) throws IOException {
        // TODO Auto-generated method stub
        //获得Subject 每一次登陆对应一个Subject
        Subject subject = SecurityUtils.getSubject();
        if(!subject.isAuthenticated()){	//isAuthenticated()判断当前是否已经登陆
            Md5Hash md5=new Md5Hash(password,password,3);
            UsernamePasswordToken uToken=new UsernamePasswordToken(phone,md5.toString());
            if(ck!=null){
                uToken.setRememberMe(true);

            }
            try {
                subject.login(uToken);
            } catch (UnknownAccountException e) {
                // TODO: handle exception
                	//账号不存在
                return 0 ;
            } catch(IncorrectCredentialsException e) {
                	//账号不存在
                return 1;
            }catch (Exception e) {
                e.printStackTrace();
                //账号不存在
                return 3;
            }
            if("admin".equals(phone)){
                return 6;
            }
            return 2;
        }

        return 0;
    }

    /**
     * 退出登陆 销毁seession
     * @return  跳转路径
     */
    @RequestMapping(value="/logout")
    public String logout(){
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        return "redirect:/pages/login.jsp";
    }

    /**
     * 管理员上传头像
     * @param img
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/upload")
    public String upload(MultipartFile img){
        try{

            User user=(User)super.getSession().getAttribute("user");

            user.setPortrait(super.upload(img));
            this.userService.upload(user);
            return "0";
        }catch (Exception e){
            e.printStackTrace();
            return "1";
        }
    }


}
