/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package packageadmin;

import Connpackage.Produit;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

/**
 *
 * @author 
 */
@WebServlet(name = "ServletProduit", urlPatterns = {"/ServletProduit"})
public class ServletProduit extends HttpServlet {
    private static final long serialVersionUID = 1L;
        
    public static final int TAILLE_TAMPON =10240;
    public static final String CHEMIN_FICHIERS = "/NetBeansProjects/Clothina/build/v_image";
        
    public ServletProduit() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        this.getServletContext().getRequestDispatcher("/admines/GestionProduit.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        boolean session = true;
        Produit produit = new Produit();
        produit.setIdCateg(Integer.parseInt(request.getParameter("idcategorie")));
        produit.setDisiniation(request.getParameter("Disiniation"));
        produit.setMarque(request.getParameter("Marque"));
        produit.setPrix(Integer.parseInt(request.getParameter("Prix")));
        produit.setDiscription(request.getParameter("Discription"));
        produit.setDisponibilite(Integer.parseInt(request.getParameter("Disponibilite")));
        produit.setImageProduit(request.getParameter("Image"));
        produit.setImageVadet(request.getParameter("ImageVedet"));
        ProduitDaoImpl produitDaoImpl = new ProduitDaoImpl();
        produitDaoImpl.save(produit);
        if(session==true){
            request.getRequestDispatcher("admines/GestionProduit.jsp").forward(request, response);
        }
    }
    private static String getNomFichier(Part part) {
        for(String contentDisposition : part.getHeader("content-disposition").split(";")){
            if(contentDisposition.trim().startsWith("filename")){
                return contentDisposition.substring(contentDisposition.indexOf('=')+1).trim().replace("\"", "");
            }
        }
        return null;
    }

    private void ecrireFichier(Part part, String nomFichier, String chemin) throws IOException {
        BufferedInputStream entree=null;
        BufferedOutputStream sortie=null;
            try {
                entree = new BufferedInputStream(part.getInputStream(), TAILLE_TAMPON);
                sortie = new BufferedOutputStream(new FileOutputStream(new File(chemin + nomFichier)),TAILLE_TAMPON);
                
                byte[]tampon = new byte[TAILLE_TAMPON];
                int longueur;
                while((longueur = entree.read(tampon))>0){
                    sortie.write(tampon, 0, longueur);
                }
            }
            
            finally {
            try {
                sortie.close();
            } catch (IOException ignore) {
            }
            try {
                entree.close();
            }
            catch (IOException ignore) {
            }
    }
    
    
    
}

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
