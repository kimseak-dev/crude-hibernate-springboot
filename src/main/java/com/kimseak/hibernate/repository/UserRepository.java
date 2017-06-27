package com.kimseak.hibernate.repository;

import com.kimseak.hibernate.entities.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by kimseak on 6/27/17.
 */
@Repository
@Transactional
public class UserRepository {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession()
    {

        return sessionFactory.getCurrentSession();
    }

    public void add(User user)
    {
        getSession().save(user);
    }

    public void delete(User user)
    {
        getSession().delete(user);
    }

    @SuppressWarnings("unchecked")
    public List<User> getAll()
    {
        //I got from you spring tool suite
        return (List<User>) getSession().createQuery("from User").list();
    }

    public void update (User user)
    {
        getSession().update(user);
    }

    public User getById(int id)
    {
        return (User) getSession().get(User.class, id);
    }
}
