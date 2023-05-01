/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package packageadmin;

import Connpackage.Categorie;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 
 */
public class CategorieModel {
    private String motCle;
    List<Categorie> Categories = new ArrayList<>();
    public String getmotCle(){
        return motCle;
    }
    public void setmotCle(String motCle){
        this.motCle = motCle;
    }
    public List<Categorie> getCategories(){
        return Categories;
    }
    public void setCategories(List<Categorie> Categories){
        this.Categories = Categories;
    }
    
}
