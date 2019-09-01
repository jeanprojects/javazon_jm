/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projetFilRouge.test;

import java.util.Date;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;
import projetFilRouge.dao.ClientDAOCrud;
import projetFilRouge.entity.Article;
import projetFilRouge.entity.Client;
import projetFilRouge.entity.Commande;
import projetFilRouge.service.CommandeService;
import projetFilRouge.spring.SpringConfig;


/** @author Jean-Marie
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = SpringConfig.class)
@Rollback(false) //actualiser BD
@Transactional
public class CommandeServiceTest {
    
    
    @Autowired
    private CommandeService commandeS;
    
    
    
    @Test
    public void validerPanierEnCoursOK(){
        long idClient = 1L;
         commandeS.validerPanierEnCours(idClient);  //on ferme le panier    
    }
    
       
    //on ajoute une ligne de commande au panier de la 1º commande
   @Test
    public void ajouterCommandeOK(){
            long idClientEnBD  = 1L; 
            long idArticleEnBD = 1L; 
            Integer quantiteArticle  = 5;  
            commandeS.ajouterPanier(idClientEnBD, idArticleEnBD, quantiteArticle);
   }
    
    //pour que le résultat de ce test ait du sens, 
    //il ne faut pas qu'il y ait un client avec un "id" 20 000;
    @Test
    public void ajouterCommandeKO(){ 
            long idClientEnBD  = 20000L; 
            long idArticleEnBD = 1L; 
            Integer quantiteArticle  = 5;
            commandeS.ajouterPanier(idClientEnBD, idArticleEnBD, quantiteArticle);
   }
    
    
 
    
    @Test
    public void afficherListeCommandeOK(){
        List<Commande> lesCommandes = commandeS.afficherListeCommande();
        
        System.out.println();System.out.println("=============================================================================================================================");
        System.out.println("VOICI TOUTES LES COMMANDES CONTENUES DANS LA BD : "  + lesCommandes );
            
        if(lesCommandes != null){
 
            System.out.println();
        
            for (Commande commande_ieme : lesCommandes) {
                  System.out.println( commande_ieme.toString() );
            }
            
        }else{
            System.out.println("METHODE afficherListeCommandeOK() : PAS DE COMMANDES "  + lesCommandes);
        }
        System.out.println();System.out.println("=============================================================================================================================");          
    }  
}
