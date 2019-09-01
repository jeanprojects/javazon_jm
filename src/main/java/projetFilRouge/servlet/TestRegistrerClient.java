/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projetFilRouge.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import projetFilRouge.service.ClientService;
import projetFilRouge.spring.AutowireServlet;
import projetFilRouge.entity.Client;

/**
 *
 * @author JM
 */
public class TestRegistrerClient extends AutowireServlet {
    
    private static final long serialVersionUID = 1L;
    
    @Autowired
    private ClientService clientServ;
   
    
    
    public  TestRegistrerClient (){
       super();
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
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
       
        //String nom  = (String) request.getParameter("nameNewClient");
        
        String nom  = request.getParameter("nameNewClient");
        String email = request.getParameter("creer_email");
        String password = request.getParameter("creer_password");
        String confirm_password = request.getParameter("confirm_creer_password");
        
        // ... todos los parametros
        String result = "";
        Client unClient = this.clientServ.afficherClientParMail(email);
        
        
        if (unClient == null) {
            Integer pts = new Integer(0);
            Client client = new Client(nom, email, password, pts);
            clientServ.ajouterClient(client);
        
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("client", client);
             
            result = "Connection réussie:  Bonjour  " + client.getNom() + "   (" + email + ")";
               
            request.setAttribute("nomDuClient", client.getNom());
            request.setAttribute("nomDuMail", client.getMail());
            request.setAttribute("message", result);
            this.getServletContext().getRequestDispatcher("/WEB-INF/welcom.jsp").forward(request, response);
        
        
            
        }else { //le mail existe déjà en BD, donc on renvoie vers la page d'inscription
             result = "Echec de creation de compte: le mail que introduit existe déjà !!";
             request.setAttribute("message", result);
             this.getServletContext().getRequestDispatcher("/WEB-INF/creerComptePourErreurRegistrer.jsp").forward(request, response);
        }
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
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
