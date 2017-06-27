package com.kimseak.hibernate.controllers;


import java.util.List;

import com.kimseak.hibernate.entities.User;
import com.kimseak.hibernate.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by kimseak on 6/27/17.
 */

@Controller
public class UserController {
    @Autowired
    private UserRepository userRepo;

    @RequestMapping(value = "/delete/{id}")
    public String delete(@PathVariable("id") int id)
    {
        User user = new User(id);
        userRepo.delete(user);
        return "redirect:/";
    }

    @RequestMapping(value = "/update/{id}")
    public String update(@PathVariable("id") int id, ModelMap model)
    {
        User user;
        user = userRepo.getById(id);
        model.addAttribute("User", user);
        return "user-update";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String edit(User user)
    {
        userRepo.update(user);
        return "redirect:/";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(User user)
    {
        userRepo.add(user);
        System.out.println(user.getRoles().get(0).getRole());
        return "redirect:/";
    }

    @RequestMapping(value = "/add-user")
    public String useradd()
    {
        return "user-add";
    }

    @RequestMapping("/")
    public String index(ModelMap model) {
        List<User> user = userRepo.getAll();
        model.addAttribute("User", user);
        return "user";
    }
}
