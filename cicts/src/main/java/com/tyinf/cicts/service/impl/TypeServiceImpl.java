package com.tyinf.cicts.service.impl;

import com.tyinf.cicts.dao.ITypeDAO;
import com.tyinf.cicts.service.ITypeService;
import com.tyinf.cicts.vo.Type;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional(propagation = Propagation.REQUIRED)
public class TypeServiceImpl implements ITypeService {
    @Autowired
    private ITypeDAO typeDAO;
    @Override
    public List<Type> list() {
        return typeDAO.findAll();
    }

    @Override
    public Type editPri(Integer tid) {
        return this.typeDAO.findById(tid);
    }

    @Override
    public void edit(Type type) {
        this.typeDAO.upDate(type);
    }
}
