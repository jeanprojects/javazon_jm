/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javazon_jm.test;

import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;
import javazon_jm.dao.ArticleDAOCrud;
import javazon_jm.dao.CommentaireDAOCrud;
import javazon_jm.entity.Article;
import javazon_jm.entity.Commentaire;
import javazon_jm.service.ClientService;
import javazon_jm.service.CommentaireService;
import javazon_jm.spring.SpringConfig;


/**
 * @author Jean-Marie
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = SpringConfig.class)
@Rollback(false)
@Transactional
public class CommentaireServiceTest {
    
    @Autowired
    private CommentaireService commentaireS;
    
    @Autowired
    private CommentaireDAOCrud daoCommentaire;
    
    @Autowired
    private ArticleDAOCrud daoArticle;
    
    @Test
    public void creerCommentaireOK(){
        Commentaire commentaire = new Commentaire("Commentaire 1");
        Article unArticle = daoArticle.findByNom("Chaussons");
        commentaireS.ajouterCommentaire(commentaire, unArticle);
    }
    
    
    @Test
    public void supprimerCommentaireOK(){
        commentaireS.supprimerCommentaire(2);
    }
    
   @Test
    public void supprimerCommentaireKO(){
        commentaireS.supprimerCommentaire(1000);
    }
    
    @Test
    public void afficherListeCommentairesOK(){
       commentaireS.afficherListeCommentaires();
  }
    
    
    @Test
    public void afficherCommentaireParArticleOK(){
        commentaireS.afficherCommentaireParArticle(daoArticle.findByNom("SAC"));
    }
    
    @Test
    public void afficherCommentaireParArticleKO(){
        commentaireS.afficherCommentaireParArticle(daoArticle.findByNom("Chaussons"));
    }
}
