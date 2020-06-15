package com.tyinf.cicts.util;


import com.tyinf.cicts.service.ILoginService;
import com.tyinf.cicts.vo.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Set;





public class LoginRealm extends AuthorizingRealm {
	@Autowired
	private ILoginService loginService;


	//授权 收钱是登陆成功后（认证后，也页面上使用权限）
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        return null;
	}

	//认证
	@Override											//封装用户输入的账号密码
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		 String phone = (String) token.getPrincipal();
		 SimpleAuthenticationInfo info = null;
		 try {
			User user = loginService.checkLogin(phone);
			if(user!=null){
				//将真实的从数据库查询的结果交给shiro框架
				info = new SimpleAuthenticationInfo(user.getPhone(),user.getPassword(),this.getName());
				Subject subject = SecurityUtils.getSubject();
				Session session = subject.getSession();     
				session.setAttribute("user", user);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();//向servlet抛出异常
		}
		return info;//返回null 就会抛出UnknownAccountException
	}

}
