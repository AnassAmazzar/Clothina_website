/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package packageadmin;

import Connpackage.Categorie;
import java.util.List;

/**
 *
 * @author 
 */
public interface CategorieDao {
    public Categorie save(Categorie Cat);
    public List<Categorie> produitsParMC(String mc);
    public Categorie getProduit(Long id);
    public Categorie updateProduit(Categorie Cat);
    public void deleteCateg(Long id);

}
