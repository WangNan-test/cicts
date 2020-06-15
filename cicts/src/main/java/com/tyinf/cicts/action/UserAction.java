package com.tyinf.cicts.action;

import com.tyinf.cicts.service.IUserService;
import com.tyinf.cicts.util.action.AbstractAction;
import com.tyinf.cicts.vo.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value = "/user")
public class UserAction extends AbstractAction {
    @Autowired
    private IUserService userService;

    /**
     * 用户保存信息操作
     * @param user  用户保存的信息
     * @return 返回保存结果（2保存成功，1手机号已存在）
     */
    @ResponseBody
    @RequestMapping(value = "/save")
    public int save(User user){
        try {
            int save = userService.save(user);
            super.getSession().setAttribute("user",user);
            return save;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    /**
     * 用户修改密码操作
     * @param newPassword   用户要修改的密码
     * @return 修改状态
     */
    @RequestMapping(value = "/update")
    public String update(String newPassword){
        Md5Hash md5=new Md5Hash(newPassword,newPassword,3);
        String password = md5.toString();
        User user = (User)super.getSession().getAttribute("user");
        try {
            this.userService.update(user.getUid(),password);
            Subject subject = SecurityUtils.getSubject();
            subject.logout();
            return "redirect:/pages/login.jsp";
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 修改密码
     * @param pwd 要修改的密码
     * @return 修改状态
     */
    @ResponseBody
    @RequestMapping(value = "/verify")
    public int verify(String pwd){
        Md5Hash md5=new Md5Hash(pwd,pwd,3);
        String password = md5.toString();
        User user = (User)super.getSession().getAttribute("user");
         return this.userService.verify(user.getUid(),password);
    }

    @RequestMapping(value = "/upload")
    public String upload(User user,MultipartFile photo)throws Exception{
        ModelAndView mav=new ModelAndView("member/member_index");
        String filename = super.upload(photo);
        user.setPortrait(filename);
        User user1=this.userService.upload(user);
        super.getSession().setAttribute("user",user1);
        return "redirect:/pages/member/member_index.jsp";
    }

    /**
     * 查询所有的用户信息
     * @return 所有的用户信息
     */
    @ResponseBody
    @RequestMapping(value = "/list")
    public HttpEntity<List<User>> list(){
        return ResponseEntity.ok(this.userService.list());
    }

}
