/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package packageadmin;
import Connpackage.*;
import java.sql.Connection;
import java.util.List;

/**
 *
 * @author 
 */
public class TestDao {
    Connection con = ConnClothina.getConn();
    public static void main(String[] args){
        CategorieDaoImpl catdao = new CategorieDaoImpl();
        Categorie cat = catdao.save(new Categorie("Collection homme"));
        System.out.println(cat);
        List<Categorie> cate = catdao.produitsParMC("H");
        for(Categorie c : cate){
            System.out.println(c);
        }
        
    }
    
}
