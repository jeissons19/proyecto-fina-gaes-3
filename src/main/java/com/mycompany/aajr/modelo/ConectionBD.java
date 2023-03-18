/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.aajr.modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author casa
 */
public class ConectionBD {
    private final String HOST_DB = "jdbc:mysql://localhost:3306/";
    private final String USER_NAME = "root";
    private final String PASSWORD = "";
    private final String DB_NAME = "aajrdotacionessas";
    protected Connection coon;

    public ConectionBD() throws SQLException, ClassNotFoundException {
        if(coon == null) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            coon = DriverManager.getConnection(HOST_DB + DB_NAME, USER_NAME, PASSWORD);
        }
    }
    
}
