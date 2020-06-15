package com.tyinf.cicts.service.impl;

import com.tyinf.cicts.dao.ILoginDAO;
import com.tyinf.cicts.service.ILoginService;
import com.tyinf.cicts.util.UserNameUtil;
import com.tyinf.cicts.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class LoginServiceImpl implements ILoginService {
    @Autowired
    private ILoginDAO loginDAO;
    @Override
    public int register(User user)throws Exception{
       if(loginDAO.findAllPhone().contains(user.getPhone())){
            return 1;
       }else{
           user.setUname(UserNameUtil.getUname());
           loginDAO.createUser(user);
           return 2;
       }

    }

    @Override
    public User checkLogin(String phone) throws Exception {
        return this.loginDAO.checkLogin(phone);
    }
}
