/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javazon_jm.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import javazon_jm.dao.ArticleDAOCrud;
import javazon_jm.entity.Article;

/**
 * @correction Jean
 */
@Transactional
@Service
public class ArticleService {

    @Autowired
    private ArticleDAOCrud dao;
   
    
    //On ajoutte un article en BD 
    public void ajouterArticle(Article article) {
       if(article != null) {
            
            //On vérifie que l'article n'est pas présent dans la BD. 
            //Sans cette condition de contrôle, si l'article passé en paramètre existe dans la BD alors une erreur rouge est lancé
            if( dao.findByNom(article.getNom()) == null  ) {  //s'il n'existe pas dans la BD (null 
                 dao.save(article);
            }
        }
    }
    
    
    
    public void  modifierArticle(Article articleBD, Article articleAvecLesModifications){
       
        if( articleBD  != null ) { //l'article "articleBD" existe dans la BD , alors on peut le modifier
  
             articleBD.setPrixHT(articleAvecLesModifications.getPrixHT());
             articleBD.setQuantiteStock(articleAvecLesModifications.getQuantiteStock() );
             articleBD.setCategorie(articleAvecLesModifications.getCategorie());
             articleBD.setDelaisAppros(articleAvecLesModifications.getDelaisAppros());
             articleBD.setDelaisDeLivraisonArt(articleAvecLesModifications.getDelaisDeLivraisonArt());
             articleBD.setNom(articleAvecLesModifications.getNom());
             articleBD.setDescription(articleAvecLesModifications.getDescription());
             dao.save(articleBD);
        }
        //else{} // si l'article n'existe pas en BD (articleBD == null ) alors on ne doit pas le créer.
    }
    
  
    
    public void supprimerArticle(String nomArticle) {
        if( dao.findByNom(nomArticle) != null  ) {     //s'il existe dans la BD , alors on peut le supprimer
            dao.delete(dao.findByNom(nomArticle));
        }
    }



    public Iterable<Article> afficherListeArticle() {
        System.out.println((List<Article>) dao.findAll());
        return dao.findAll();
    }

    public List<Article> afficherArticleParCategorieHomme() {
        System.out.println(dao.findByCategorie(Article.Categorie.HOMME));
        return dao.findByCategorie(Article.Categorie.HOMME);
    }

    public List<Article> afficherArticleParCategorieFemme() {
        System.out.println(dao.findByCategorie(Article.Categorie.FEMME));
        return dao.findByCategorie(Article.Categorie.FEMME);
    }

    public List<Article> afficherArticleParCategorieSac() {
        System.out.println(dao.findByCategorie(Article.Categorie.SAC));
        return dao.findByCategorie(Article.Categorie.SAC);
    }
    
    public Article afficherArticleParNom(String nomArticle){
        System.out.println(dao.findByNom(nomArticle));
        return dao.findByNom(nomArticle);
    }
}
