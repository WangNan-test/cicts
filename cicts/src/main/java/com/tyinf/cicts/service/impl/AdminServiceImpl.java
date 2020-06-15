package com.tyinf.cicts.service.impl;

import com.tyinf.cicts.dao.IAdminDAO;
import com.tyinf.cicts.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.Map;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class AdminServiceImpl implements IAdminService {
    @Autowired
    private IAdminDAO adminDAO;

    @Override
    public Map<String, Object> list(Map<String, Object> map) {
        Map<String,Object> map1=new HashMap<>();
        map1.put("allRecorders",this.adminDAO.count(map));
        map1.put("allGoods",this.adminDAO.findSplit(map));
        return map1;
    }
}
