package javazon_jm.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javazon_jm.entity.Client;
import javazon_jm.spring.AutowireServlet;


@WebServlet("/TestContact")
public class TestContact extends AutowireServlet {
	private static final long serialVersionUID = 1L;

 
    public TestContact() {
    	   super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
            HttpSession httpSession = request.getSession();
            Client client = (Client) httpSession.getAttribute("client");   
            request.setAttribute("nomDuClient", client.getNom()); 
            
            
            this.getServletContext().getRequestDispatcher("/WEB-INF/contact.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
