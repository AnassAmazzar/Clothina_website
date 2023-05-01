/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package packageadmin;


import Connpackage.Article;
import Connpackage.ConnClothina;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author 
 */
public class ArticleDao {
    Connection con=ConnClothina.getConn();
    PreparedStatement preparedStatemente=null;
    public Article save(Article Art) {
        try {
            PreparedStatement preparedStatement = con.prepareStatement("Insert into Article values(S_MYTABART.nextval,?,?,?,?,sysdate)");
            preparedStatement.setString(1, Art.getImageArt());
            preparedStatement.setString(2, Art.getTitreArt());
            preparedStatement.setString(3, Art.getDescriptionArt());
            preparedStatement.setString(4, Art.getSourceArt());
            preparedStatement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
//            ex.printStackTrace();
        }
        return Art;
    }
}
