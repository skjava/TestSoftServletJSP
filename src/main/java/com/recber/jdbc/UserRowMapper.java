/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.recber.jdbc;

import com.recber.domain.User;
import java.sql.ResultSet;  
import java.sql.SQLException;  
import org.springframework.jdbc.core.RowMapper; 

/**
 *
 * @author recber
 */
public class UserRowMapper implements RowMapper<User> {  
  
 @Override  
 public User mapRow(ResultSet resultSet, int line) throws SQLException {  
  UserExtractor userExtractor = new UserExtractor();  
  return userExtractor.extractData(resultSet);  
 }  
  
} 
