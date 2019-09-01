package javazon_jm.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import javazon_jm.controller.ClientController;
import javazon_jm.entity.Client;
import javazon_jm.service.ClientService;
import javazon_jm.spring.AutowireServlet;

/**
 * Servlet implementation class TestValiderCompte
 */
public class TestValiderCompte extends AutowireServlet {

    private static final long serialVersionUID = 1L;
    
    @Autowired
    private ClientService clientServ;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestValiderCompte() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub

        String result = "";
        String email = request.getParameter("valider_email");
        String password = request.getParameter("valider_password");

        // obtener de la base de datos los datos del cliente con email y password:
        //ClientController clientControler = new ClientController();
        //int error = clientControler.findClientByMail(email, password);  //obtention du message � afficher dans la page d'acceuil Welcom
        Client unClient = this.clientServ.afficherClientParMail(email);
        
        int intCode = 0;

        if (unClient != null) {

            if (!unClient.getPassword().equals(password)) {
                intCode = -2;  //client existe mais mot de passe introduit par client est faux(incorrect)
            }
        } else {
            intCode = -1;  //client n'existe pas
        }
  
        int error  = intCode;
        
        //-------------
        switch (error) {
            case 0:
                Client client = clientServ.afficherClientParMail(email);

                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("client", client);

                result = "Session de votre compte client établie";    //+ client.getNom() + "   (" + email + ")";
                //ici le client a l'Id obtenu en BD (ceci est r�alis� par la methode "findClientByMail" de la classe "ClientController")

                request.setAttribute("nomDuClient", client.getNom());
                request.setAttribute("nomDuMail", client.getMail());
                break;

            case -1:
                result = "Echec de connection: vous n'êtes pas enregistré en tant que client";
                break;

            case -2:
                result = "Echec de connection: mot de passe introduit incorrect !!";
                break;

            default:
                result = "Error!";
                break;
        }

        
        request.setAttribute("message", result);
        if (error == 0) { //client valide (exit et mot de passe introduit est correct)
            this.getServletContext().getRequestDispatcher("/WEB-INF/welcom.jsp").forward(request, response);
        } else {
            this.getServletContext().getRequestDispatcher("/WEB-INF/loginPourErreurIdentification.jsp").forward(request, response);
        }

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
