/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package packageadmin;

import Connpackage.ConnClothina;
import Connpackage.Admine;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author anass
 */
public class UtilisateurDao {
    Connection con = ConnClothina.getConn();
    public Admine Ajouter(Admine utils) {
        try {
            PreparedStatement preparedStatement = con.prepareStatement("INSERT INTO MyAdmine VALUES(S_MYTABLE.nextval,?,?,?,?,?,?,?,'AdminLogo.png',sysdate)");
            preparedStatement.setString(1, utils.getNom_Admine());
            preparedStatement.setString(2, utils.getPrenom_Admine());
            preparedStatement.setString(3, utils.getEmail());
            preparedStatement.setString(4, utils.getpasswords());
            preparedStatement.setString(5, utils.getTelephone());
            preparedStatement.setString(6, utils.getSexe());
            preparedStatement.setString(7, utils.getProfile());
            preparedStatement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return utils;
    }
}
