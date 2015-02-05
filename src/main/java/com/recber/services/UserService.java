/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.recber.services;

import com.recber.domain.User;
import java.util.List;

/**
 *
 * @author recber
 */
public interface UserService {  
  
 public void insertData(User user);  
 public List<User> getUserList();  
 public void deleteData(String id);  
 public User getUser(String id);  
 public void updateData(User user);  
  
}
