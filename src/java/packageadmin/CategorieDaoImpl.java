/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package packageadmin;

import Connpackage.Categorie;
import Connpackage.ConnClothina;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author 
 */
public class CategorieDaoImpl implements CategorieDao{
    Connection con = ConnClothina.getConn();
    ResultSet R;

    @Override
    public Categorie save(Categorie Cat) {
        
        try {
            PreparedStatement preparedStatement = con.prepareStatement("Insert into categorie values(S_MYCATEG.nextval,?,sysdate)");
//            preparedStatement.setInt(1, Cat.getidcategorie());
            preparedStatement.setString(1, Cat.getDisiniation());
//            preparedStatement.setDate(3, (Date) Cat.getDatecategorie());
            preparedStatement.executeUpdate();
        } catch (SQLException ex) {
            //Logger.getLogger(CategorieDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            //JOptionPane.showConfirmDialog(null, ex);
            ex.printStackTrace();
        }
        return Cat;
    }

    @Override
    public List<Categorie> produitsParMC(String mc) {
        List<Categorie> Cats = new ArrayList<Categorie>();
        try {
            PreparedStatement preparedStatement = con.prepareStatement("Select * from categorie where Dusiniation like ?");
            preparedStatement.setString(1, "%"+mc+"%");
            R = preparedStatement.executeQuery();
            while(R.next()){
                Categorie c = new Categorie();
                c.setidcategorie(R.getInt("idcategorie"));
                c.setDisiniation(R.getString("Dusiniation"));
                c.setDatecategorie(R.getDate("Datecategorie"));
                Cats.add(c);
            }
        } catch (SQLException ex) {
//            Logger.getLogger(CategorieDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
              ex.printStackTrace();
        }
        return Cats;
        
    }

    @Override
    public Categorie getProduit(Long id) {
        return null;
    }

    @Override
    public Categorie updateProduit(Categorie Cat) {
        try {
            PreparedStatement preparedStatement = con.prepareStatement("UPDATE categorie SET Dusiniation = ?, Datecategorie = ? WHERE idcategorie = ?");
            preparedStatement.setString(2, Cat.getDisiniation());
            preparedStatement.setDate(3, (Date) Cat.getDatecategorie());
            preparedStatement.setInt(1, Cat.getidcategorie());
            preparedStatement.executeUpdate();
            } catch (SQLException ex) {
//            Logger.getLogger(CategorieDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
              ex.printStackTrace();
        }
        return Cat;
    }

    @Override
    public void deleteCateg(Long id) {
        try {
            PreparedStatement preparedStatement = con.prepareStatement("delete from MyAdmine where idcategorie = ?");
            preparedStatement.setLong(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException ex) {
//            Logger.getLogger(CategorieDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
        }
    }
    
}
