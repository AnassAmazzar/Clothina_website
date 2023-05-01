/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connpackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author 
 */
public class ConnClothina {
    public static Connection getConn(){
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            return DriverManager.getConnection("Jdbc:oracle:thin:@localhost:1521/orcl","Dash","1234");
        } catch (ClassNotFoundException ex) {
            System.out.println(ex+" Class not found");
        }catch (SQLException ex) {
            System.out.println(ex);
        }
        return getConn();
    }
    public static void main(String[] args){
        getConn();
    }
}
