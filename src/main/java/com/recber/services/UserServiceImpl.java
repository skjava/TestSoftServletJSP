/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.recber.services;

import com.recber.dao.UserDao;
import com.recber.domain.User;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author recber
 */
public class UserServiceImpl implements UserService {  
  
 @Autowired  
 UserDao userdao;  
  
 @Override  
 public void insertData(User user) {  
  userdao.insertData(user);  
 }  
  
 @Override  
 public List<User> getUserList() {  
  return userdao.getUserList();  
 }  
  
 @Override  
 public void deleteData(String id) {  
  userdao.deleteData(id);  
    
 }  
  
 @Override  
 public User getUser(String id) {  
  return userdao.getUser(id);  
 }  
  
 @Override  
 public void updateData(User user) {  
  userdao.updateData(user);  
    
 }  
  
  
   
}
