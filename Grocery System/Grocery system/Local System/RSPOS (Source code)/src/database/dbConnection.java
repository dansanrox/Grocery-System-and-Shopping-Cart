package database;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Dhanuka
 */
public class dbConnection {

    public static Connection db() throws ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = null;
        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rajaguru_stores", "root", "");
        } catch (SQLException ex) {
            Logger.getLogger(dbConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }

}
