package kasir_kelompok2;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author alitz
 */
public class MyConnection {
    // create function to connect with mysql database
    public static Connection getConnection(){
        
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kasir", "root", "");
            
        } catch(Exception ex){
            System.out.println(ex.getMessage());
            
        }
        
        return con;
    }
}


//