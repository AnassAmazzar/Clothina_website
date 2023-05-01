/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package packageadmin;

import Connpackage.*;
import Connpackage.ConnClothina;
import java.sql.PreparedStatement;
import Connpackage.Produit;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
//import apache.tomcat.javax.bcel.generic.ObjectType;

/**
 *
 * @author 
 */
public class ProduitDaoImpl implements ProduitDao {
    Connection con = ConnClothina.getConn();
//    ResultSet R;
    @Override
    public Produit save(Produit produit) {
        try {
            PreparedStatement preparedStatement = con.prepareStatement("INSERT INTO Produit VALUES(S_MYProduct.nextval,?,?,?,?,?,?,sysdate,?,?)");
            preparedStatement.setInt(1, produit.getIdCateg());
            preparedStatement.setString(2, produit.getDisiniation());
            preparedStatement.setString(3, produit.getMarque());
            preparedStatement.setInt(4, produit.getPrix());
            preparedStatement.setString(5, produit.getDiscription());
            preparedStatement.setInt(6, produit.getDisponibilite());
            preparedStatement.setString(7, produit.getImageProduit());
            preparedStatement.setObject(8, produit.getImageVadet());
            preparedStatement.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
//            Logger.getLogger(ProduitDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return produit;
    }

    @Override
    public Produit updateProduit(Produit produit) {
        return produit;
    }

    @Override
    public void deleteCateg(int id) {
    }
    
}
