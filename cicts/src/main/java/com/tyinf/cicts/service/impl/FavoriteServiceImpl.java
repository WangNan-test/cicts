package com.tyinf.cicts.service.impl;

import com.tyinf.cicts.dao.IFavoriteDAO;
import com.tyinf.cicts.service.IFavoriteService;
import com.tyinf.cicts.vo.Favorite;
import com.tyinf.cicts.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class FavoriteServiceImpl implements IFavoriteService {
    @Autowired
    private IFavoriteDAO favoriteDAO;

    @Override
    public void add(Favorite favorite) {
        this.favoriteDAO.add(favorite);
    }

    @Override
    public Favorite flag(Favorite favorite) {

        return this.favoriteDAO.flag(favorite);
    }

    @Override
    public List<Favorite> list(Integer uid) {
        return this.favoriteDAO.list(uid);
    }

    @Override
    public void delete(Favorite favorite) {
        this.favoriteDAO.delete(favorite);
    }
}
