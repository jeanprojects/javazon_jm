/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javazon_jm.main;

import java.util.Date;
import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javazon_jm.entity.Article;
import javazon_jm.entity.Client;
import javazon_jm.entity.Commande;
import javazon_jm.entity.Commentaire;
import javazon_jm.entity.LigneDeCommande;
import javazon_jm.entity.Reclamation;

/**
 *
 * @author 
 */
public class Main {

 
    
    public static void main(String[] args) {
        // TODO code application logic here
        //Persistence.createEntityManagerFactory("javazon_jm_PU");
        
        EntityManager em = Persistence.createEntityManagerFactory("javazon_jm_PU").createEntityManager();
   
        Client film1 = em.find(Client.class, 1L);   //idem à faire ceci :  em.find(Client.class, (long)1 );
        
        Main.insertFirstRegistersInBD(em);  
  
    }
    
    
    
    
    
    
    
   //-------------------------------------------------------------------------
    private static void insertFirstRegistersInBD(EntityManager em){ 
       
        // -------------------------------------------------------------------------------------
        //Creation d'un client
        // -------------------------------------------------------------------------------------
        String nom = "Jean";
        String mail = "jm@gmail.com";
        String password = "456jmjm";
        Integer pointFidelite = 100;
        Client client1 = new Client(nom, mail, password, pointFidelite);
        // -------------------------------------------------------------------------------------
        
        
        // -------------------------------------------------------------------------------------
        //Creation d'une commande
        // -------------------------------------------------------------------------------------
        Double montantTotal = 0.00;
        String cgv = "cgv1"; 
        Integer tva = 19; 
        Commande.EtatPanier etatDuPanier = Commande.EtatPanier.ENCOURS;
        Commande commande1 = new Commande(montantTotal, cgv,  tva, etatDuPanier);
        
        commande1.setDateLivraisonCommande(new Date());
        commande1.setDate(new Date());
        commande1.setMoyenDePaiement(Commande.MoyenDePaiement.VIREMENT);
       // -------------------------------------------------------------------------------------
        
       
       // -------------------------------------------------------------------------------------
       //Creation d'un article
       // -------------------------------------------------------------------------------------
        String nomArticle = "robe";
        Double prixHT = 50.00;
        Integer delaisAppros = 2;
        Integer delaisDeLivraisonArt = 3; 
        Integer quantiteStock = 15;
        
        //avec ce constructeur de la classe "Article", on rempli obligatoirement 
        //tous attributs d'instance ayant @Column(nullable = false)
        Article article1 =new Article(nomArticle, prixHT, delaisAppros, delaisDeLivraisonArt, quantiteStock);                  
        article1.setCategorie(Article.Categorie.FEMME); 
        article1.setDescription("Robe longue, couleurs diverses");
       // -------------------------------------------------------------------------------------
       
 
       // -------------------------------------------------------------------------------------
       //Creation d'une ligne de commande
       // -------------------------------------------------------------------------------------
        Integer quantiteArticle = 5;
        LigneDeCommande.TypeLigneDeCommande typeLigneDeCommande = LigneDeCommande.TypeLigneDeCommande.COMMANDE;
        LigneDeCommande ligneDeCommande1 = new LigneDeCommande(quantiteArticle, typeLigneDeCommande);
        // -------------------------------------------------------------------------------------
       
        
        // -------------------------------------------------------------------------------------
       //Creation d'une reclamation pour une commande
       // -------------------------------------------------------------------------------------
        Reclamation reclamation1 = new Reclamation("qualité / prix pas supper");
        
        
       // -------------------------------------------------------------------------------------
       //Creation d'un commentaire pour un article
       // -------------------------------------------------------------------------------------
        Commentaire commentaire1 = new Commentaire("bonne qualité mais un peu chère");
   
        
        //établir la relacion entre la ligne de commande et l'article:
        ligneDeCommande1.setArticle(article1);
        article1.getListeLigneDeCommandes().add(ligneDeCommande1);
        
        Integer quantiteArticleEnStock = article1.getQuantiteStock();
        article1.setQuantiteStock( quantiteArticleEnStock - quantiteArticle );
        
        
        
        //établir la relacion entre la ligne de commande et la commande:
        ligneDeCommande1.setCommande(commande1);
        commande1.getListeLignedecommande().add(ligneDeCommande1);
        
        Double montantTotalLigneDeCommande = quantiteArticle * article1.getPrixHT();
        commande1.setActualiserMontantExistant(montantTotalLigneDeCommande);
        
       
        
        //établir la relacion entre la  commande et le client:
        commande1.setClient(client1);
        client1.getListeCommandes().add(commande1);
        
        //établir la relacion entre la reclamation et la commande:
        reclamation1.setCommandeReclamation(commande1);
        commande1.getReclamations().add(reclamation1);
        
        //établir la relation entre le commentaire et l'article:
        commentaire1.setArticleco(article1);
        article1.getCommentairesArticle().add(commentaire1);
        
  
        em.getTransaction().begin();
        em.persist(commentaire1);
        em.persist(reclamation1);
        em.persist(article1);
        em.persist(ligneDeCommande1);
        em.persist(commande1);     //persister en 1º la commande (qui contient la clef étrangère vers Client)
        em.persist(client1);       //persister en 2º le client  (@OneToMany sur l'attribut listeCommandes de l'entity "Client·)
        em.getTransaction().commit();
    }
    //-------------------------------------------------------------------------
    
}
