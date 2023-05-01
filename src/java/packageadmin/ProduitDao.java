/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package packageadmin;


import Connpackage.Produit;

/**
 *
 * @author 
 */
public interface ProduitDao {
    public Produit save(Produit Prod);
    public Produit updateProduit(Produit Prod);
    public void deleteCateg(int id);
}
