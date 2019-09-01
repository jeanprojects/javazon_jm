/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projetFilRouge.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;
import projetFilRouge.dao.ArticleDAOCrud;
import projetFilRouge.entity.Article;
import projetFilRouge.service.ArticleService;
import projetFilRouge.spring.SpringConfig;



/**
 * @author Jean-Marie
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = SpringConfig.class)
@Rollback(false)
@Transactional
public class ArticleServiceTest {

    @Autowired
    private ArticleService articleS;

    @Autowired
    private ArticleDAOCrud daoArticle;


    

    @Test
    public void creerArticleKO(){  //L'article "chaussure existe déjà et donc l'erreur qui était lancé ne se lance plus
       
       //-------------------------------------------------------------------------------------------------------------------
        Article article = new Article("chaussure", "belles chaussures", 20.99, 1 , 2, 3, Article.Categorie.HOMME);             
        article.setCategorie(Article.Categorie.HOMME);
        articleS.ajouterArticle(article);
        //-------------------------------------------------------------------------------------------------------------------
        
        //-------------------------------------------------------------------------------------------------------------------
        Article article2 = new Article("pantalon", "pantalon blanc", 120.53, 1 , 2, 3, Article.Categorie.HOMME);            
        articleS.ajouterArticle(article2);
        //-------------------------------------------------------------------------------------------------------------------
        
        //-------------------------------------------------------------------------------------------------------------------
        String nom = "robe";
        Double prixHT = 45.95;
        Integer delaisAppros = 10;
        Integer delaisDeLivraisonArt =15; 
        Integer quantiteStock = 5;
        
        //avec ce constructeur de la classe "Article", on rempli obligatoirement 
        //tous attributs d'instance ayant @Column(nullable = false)
        Article article3 =new Article(nom, prixHT, delaisAppros, delaisDeLivraisonArt, quantiteStock);                  
        article3.setCategorie(Article.Categorie.FEMME); 
        article3.setDescription("Robe longue, couleurs diverses");
        articleS.ajouterArticle(article3);
        //-------------------------------------------------------------------------------------------------------------------
    }
    
    
    
    
    
    @Test
    public void modifierArticleOK(){
        String nomArticle = "pantalon";
        Article articleBD = daoArticle.findByNom(nomArticle);//peut renvoyer null si l'article "pantalon" n'existe pas en BD  
        
        Article articleAvecModifications = new Article();
        
        articleAvecModifications.setNom(nomArticle);
        articleAvecModifications.setPrixHT(70.20);
        articleAvecModifications.setCategorie(Article.Categorie.FEMME);
        articleAvecModifications.setDelaisAppros(8);
        articleAvecModifications.setDelaisDeLivraisonArt(10);
        articleAvecModifications.setQuantiteStock(300);
        articleAvecModifications.setDescription("un super joli pantalon");

        articleS.modifierArticle(articleBD, articleAvecModifications);
    }
    
    
   
    @Test
    public void modifierArticleKO(){  //l'article "chips" n'existe pas en BD et on veut y acceder pour le modifier !!!
        String nomArticle = "short";
        Article articleBD = daoArticle.findByNom(nomArticle);  //peut renvoyer null si l'article "Chaussons" n'existe pas en BD  
        
        Double prixHT = 6.55;
        Integer delaisAppros = 4;
        Integer delaisDeLivraisonArt =6; 
        Integer quantiteStock = 25;
        Article articleAvecModifications = new Article(nomArticle, prixHT, delaisAppros, delaisDeLivraisonArt, quantiteStock);  //attributs d'instance ayant @Column(nullable = false)
        articleAvecModifications.setDescription("très bonne qualitée");
        articleS.modifierArticle(articleBD, articleAvecModifications);
 
        if(articleBD == null){
             System.out.println();System.out.println();System.out.println();System.out.println("=============================================================");
             System.out.println("ARTICLE  " + nomArticle + "  N'EXISTE PAS EN BD : "  + articleBD);
             System.out.println();System.out.println();System.out.println();System.out.println("=============================================================");  
        }
    }
    
    
    


   @Test
    public void afficherListeArticleOK(){
       articleS.afficherListeArticle();
   }
    
    @Test
    public void afficherArticleParCategorieHommeOK(){
        articleS.afficherArticleParCategorieHomme();
    }
    
    @Test
    public void afficherArticleParCategorieFemmeOK() {
        articleS.afficherArticleParCategorieFemme();
    }
    
    @Test
    public void afficherArticleParCategorieSacOK() {
        articleS.afficherArticleParCategorieSac();
    }
    
    
   @Test
    public void afficherArticleParNomOK(){
        articleS.afficherArticleParNom("chemise");
    }
    
    
    @Test
    public void afficherArticleParNomKO(){
        articleS.afficherArticleParNom("sac inexistant");
    }
    
    
    @Test
    public void supprimerArticleOK(){
        articleS.supprimerArticle("Li chassure");
        articleS.supprimerArticle("Lo chassure");
    }
    
     @Test
    public void supprimerArticleKO(){
        articleS.supprimerArticle("sac inexistant");
    }
    
}
