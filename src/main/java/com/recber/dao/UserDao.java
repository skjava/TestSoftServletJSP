/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.recber.dao;

import java.util.List;
import com.recber.domain.User;

/**
 *
 * @author recber
 */

public interface UserDao {

    public void insertData(User user);

    public List<User> getUserList();

    public void updateData(User user);

    public void deleteData(String id);

    public User getUser(String id);

}
