/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab6.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import lab6.javabeans.Marathon;

/**
 *
 * @author Ahmad Afif Syahmi bin Ahmad Rozali
 */
public class MarathonDAO {
    
    private Connection connection;
    private int result = 0;
    
    public MarathonDAO() throws ClassNotFoundException {
        connection = Database.getConnection();
    }
    
    public int addDetails(Marathon marathon) {
        try {
            String insertMarathon = "INSERT INTO marathon VALUES (?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(insertMarathon);
            
            System.out.println("IC No: " + marathon.getIcNo());
            System.out.println("Name: " + marathon.getName());
            System.out.println("Category: " + marathon.getCategory());
            
            
            // Parameters
            preparedStatement.setString(1, marathon.getIcNo());
            preparedStatement.setString(2, marathon.getName());
            preparedStatement.setString(3, marathon.getCategory());
            
            result = preparedStatement.executeUpdate();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
    
}