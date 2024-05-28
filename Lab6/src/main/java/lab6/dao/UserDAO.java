/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab6.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import lab6.javabeans.User;

/**
 *
 * @author Ahmad Afif Syahmi bin Ahmad Rozali
 */
public class UserDAO {
    
    private Connection connection;
    private int result = 0;
    
    public UserDAO() throws ClassNotFoundException {
        connection = Database.getConnection();
    }
    
    public int addDetails(User user) {
        try {
            String insertUser = "INSERT INTO user VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(insertUser);
            
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getFirstname());
            preparedStatement.setString(4, user.getLastname());
            
            result = preparedStatement.executeUpdate();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        
        return result;
    }
    
    public User getUser(String username, String password) {
        try {
            String selectUser = "SELECT * FROM user WHERE username = ? AND password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(selectUser);
            
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);

            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                User user = new User();
                user.setUsername(resultSet.getString("username"));
                user.setPassword(resultSet.getString("password"));
                user.setFirstname(resultSet.getString("firstname"));
                user.setLastname(resultSet.getString("lastname"));
                return user;
            }
        } 
        catch (SQLException e) {
            e.printStackTrace();
        }

        return null; // Indicate user not found
    }
    
}