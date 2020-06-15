package com.tyinf.cicts.service.impl;

import com.tyinf.cicts.dao.IUserDAO;
import com.tyinf.cicts.service.IUserService;
import com.tyinf.cicts.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class UserServiceImpl implements IUserService {
    @Autowired
    private IUserDAO userDAO;
    @Override
    public int save(User user) throws Exception {
        if(userDAO.findAllPhone(user).contains(user.getPhone())){
            return 1;
        }else{
            userDAO.save(user);
            return 2;
        }

    }

    @Override
    public int verify(Integer uid, String password) {
        if(password.equals(this.userDAO.verify(uid))){
            return 0;
        }else{
            return 1;
        }
    }

    @Override
    public void update(Integer uid, String newPassword) throws Exception {
        Map<String,Object> map =new HashMap<>();
        map.put("uid",uid);
        map.put("newPassword",newPassword);
            this.userDAO.update(map);
    }

    @Override
    public User upload(User user) throws Exception {
        this.userDAO.upload(user);
        return  this.userDAO.findById(user.getUid());
    }

    @Override
    public List<User> list() {
        return this.userDAO.list();
    }
}
