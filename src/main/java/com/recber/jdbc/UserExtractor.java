/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.recber.jdbc;

import com.recber.domain.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

/**
 *
 * @author recber
 */
public class UserExtractor implements ResultSetExtractor<User> {

    @Override
    public User extractData(ResultSet resultSet) throws SQLException,
            DataAccessException {

        User user = new User();

        user.setUserId(resultSet.getInt(1));
        user.setFirstName(resultSet.getString(2));
        user.setLastName(resultSet.getString(3));
        user.setFace(resultSet.getString(4));
        user.setCity(resultSet.getString(5));

        return user;
    }

}
