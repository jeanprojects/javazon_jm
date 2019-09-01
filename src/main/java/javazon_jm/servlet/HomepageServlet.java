/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javazon_jm.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import javazon_jm.entity.Article;
import javazon_jm.service.ArticleService;
import javazon_jm.spring.AutowireServlet;

/**
 *
 * @author alexa
 */
@WebServlet(name = "HomepageServlet", urlPatterns = {"/accueil"})
public class HomepageServlet extends AutowireServlet {
    
    @Autowired
    private ArticleService service;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    
        // Appel services au besoin
        //service.ajouterArticle(new Article("JUPE", "Jupe beige", 25.50, 2, 2, 30, Article.Categorie.FEMME));
        
//        req.setAttribute("msg", "Message vers ma JSP");
//        req.setAttribute("articles", service.afficherListeArticle());
        
        // Renvoi vers 1 vue ( JSP )
        req.getRequestDispatcher("index.jsp").forward(req, resp); 
    }
    
    

}
