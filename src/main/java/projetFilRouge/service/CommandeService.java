/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projetFilRouge.service;

import java.time.Instant;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import projetFilRouge.dao.ArticleDAOCrud;
import projetFilRouge.dao.ClientDAOCrud;
import projetFilRouge.dao.CommandeDAOCrud;
import projetFilRouge.dao.LigneDeCommandeDAOCrud;
import projetFilRouge.entity.Article;
import projetFilRouge.entity.Client;
import projetFilRouge.entity.Commande;
import projetFilRouge.entity.LigneDeCommande;



/**
 * @author Jean-Marie
 */
@Transactional
@Service
public class CommandeService {
    
    @Autowired
    private ClientDAOCrud daoClient;
  
    @Autowired
    private ArticleDAOCrud daoArticle;
    
    @Autowired
    private LigneDeCommandeDAOCrud daoLigneCommande;
    
    @Autowired
    private LigneDeCommandeDAOCrud dao;
   
    @Autowired
    private CommandeDAOCrud daoCommande;
    
    @Autowired
    private LigneDeCommandeService ServiceLigneDeCommande;

//    // CETTE FONCTION ME CASSE LES C********* VOILA
//    public void ajouterPanier(long idClient, long idArticle, long quantite) { // Créé la ligne avec l'idArticle associé mais pas l'idCommande
//
//        // Recupere la commande EN COURS du client idClient si elle existe, sinon on en cree une nouvelle
//        Commande commande = this.daoCommande.findOneByClientIdAndEtatPanier(idClient, Commande.EtatPanier.ENCOURS);
//        System.out.println("1-COMMANDE RECUPERE : " + commande);
//        if (commande == null) {
//            commande = new Commande();
//            System.out.println("2-NOUVELLE COMMANDE CREE : " + commande);
//            // Recup client et l associe a la commande
//            Client cli = daoClient.findOne(idClient);
//            System.out.println("3-CLIENT RECUPERE : " + cli);
//            //cli.getListeCommandes().add(commande);
//            System.out.println("4-AJOUT COMMANDE A LA LISTE DE COMMANDE DU CLIENT : " + cli.getListeCommandes().add(commande));
//            System.out.println("5-ASSOCIATION DE LA COMMANDE AU CLIENT : ");
//            commande.setClient(cli);
//
//        } else {
//            System.out.println("6-COMMANDE DEJA EXISTANTE DU COUP ON PASSE A LA SUITE");
//        }
//
//        // Cree nouv ligne de commande que j associe a la commande
//        LigneDeCommande ligneCmd = new LigneDeCommande();
//        System.out.println("7-NOUVELLE LIGNE DE COMMANDE CREE : " + ligneCmd);
//        //ligneCmd.setCommande(commande);
//
//        // Recup article a partir de son id et l assoc ligne com + quantite
//        Article art = daoArticle.findOne(idArticle);
//        System.out.println("8-RECUPERATION DE L'ARTICLE PAR SON ID : " + art);
//        // CETTE LIGNE PLANTE TOUT //art.getListeLigneDeCommandes().add(ligneCmd);
//        ligneCmd.setArticle(art);
//        System.out.println("9-SET L'ARTICLE A LA LIGNE DE COMMANDE : " + ligneCmd);
//        ligneCmd.setQuantiteArticle(quantite);
//        System.out.println("10-SET LA QUANTITE A LA LIGNE DE COMMANDE : " + ligneCmd);
//
//        commande.getListeLignedecommande().add(ligneCmd);
//        System.out.println("11-AJOUTE LA LIGNE DE COMMANDE A LA LISTE DE LIGNES DE COMMANDES DE LA COMMANDE : " + commande);
//
//        // Maj / ajoute de la commande et on est ok
//        daoCommande.save(commande);
//        System.out.println("12-AJOUT DE LA COMMANDE EN BASE DE DONNEES");
//    }
    
    
    
    
    
    
   
    
   public void ajouterPanier(long idClient, long idArticle, Integer quantite){
       
        Client client = this.daoClient.findOne(idClient);
       
        //si le client existe, alors on peut cherche sa commande 
        //ou lui créér une commande pour ensuite rajoute à cette commande une nouvelle ligne de commande
        if(client != null) {
            
            
             // Recupere la commande EN COURS du client idClient si elle existe, sinon on en cree une nouvelle
             Commande commande = this.daoCommande.findOneByClientIdAndEtatPanier(idClient, Commande.EtatPanier.ENCOURS);

             System.out.println();System.out.println();System.out.println("------------------------------------------------------------------------------------");
             System.out.println("1-COMMANDE RECUPERE : " + commande);
             System.out.println();System.out.println();System.out.println("------------------------------------------------------------------------------------");


            /**
            * il n'y a pas de commande en cours existante pour 
            * ce client de "id" idClient.
            * Donc creation d'une commande avec des valeurs par défaut
            * ON AJOUTE EN BASE DE DONNÉES UNE COMMANDE QUE L'ON VIENT DE CRÉER 
            * QUE S'IL N'Y AVAIT AUCUNE COMMANDE EN COURS POUR UN CLIENT AYANT
            * L'ID "idClient" (UNE COMMANDE EN COURS A L'ATTRIBUT EtatPanier 
            * AVEC L'ENUMERATEUR "ENCOURS", CE CAS DE FIGURE CORRESPOND 
            * À CETTE CONDITION DE CONTRÔLE AVEC SA CONDITION "commande == null")
            */
            if(commande == null){ 

                // -------------------------------------------------------------------------------------
                //Creation d'une commande avec des valeurs par défaut
                // -------------------------------------------------------------------------------------
                //commande = CommandeService.creerCommandeParDefaut();
                Commande.EtatPanier etatPanier = Commande.EtatPanier.ENCOURS;
                commande = new Commande(0.00, "cgv1",  19, etatPanier) ;
              
                System.out.println();System.out.println();System.out.println("------------------------------------------------------------------------------------");       
                System.out.println("2-NOUVELLE COMMANDE CREE : " + commande);
                System.out.println();System.out.println();System.out.println("------------------------------------------------------------------------------------");       

                //---------------------------------------------------------------------------------------------------------
                // Recuperation du client et on l'associe à la commande que l'on vient de créer:
                //---------------------------------------------------------------------------------------------------------
                Client cli = daoClient.findOne(idClient);

                 System.out.println();System.out.println();System.out.println("------------------------------------------------------------------------------------");       
                 System.out.println("3-CLIENT RECUPERE : " + cli);
                 System.out.println();System.out.println();System.out.println("------------------------------------------------------------------------------------");  

              /*       
                 cli.getListeCommandes().add(commande);
                 System.out.println();System.out.println();System.out.println("------------------------------------------------------------------------------------");  
                 System.out.println("4-AJOUT COMMANDE A LA LISTE DE COMMANDE DU CLIENT : " +  cli.getListeCommandes());
                 System.out.println();System.out.println();System.out.println("------------------------------------------------------------------------------------");  
              */      
                 commande.setClient(cli);

                 System.out.println();System.out.println();System.out.println("------------------------------------------------------------------------------------");  
                 System.out.println("5.5- ASSOCIATION DE LA COMMANDE AU CLIENT : " + commande.getClient());  
                 System.out.println();System.out.println();System.out.println("------------------------------------------------------------------------------------");
                 //---------------------------------------------------------------------------------------------------------
                
                 daoCommande.save(commande);  
                 
            } else {
                 System.out.println();System.out.println();System.out.println("------------------------------------------------------------------------------------");
                 System.out.println("6-COMMANDE DEJA EXISTANTE DU COUP ON PASSE A LA SUITE");
                 System.out.println();System.out.println();System.out.println("------------------------------------------------------------------------------------");
            }

            //======================================================================================================================
            //  Creation d'une ligne de commande 
            //====================================================================================================================== 
            //Il faut créer une nouvelle ligne de commande que l'on associe a la commande "commande" (obtenue ou créée) 
             
            // -----------------------------------------------------------------------------------------------------------------
            // ERREUR ON N'A PAS LES ATTRIBUT OÙ IL Y A COLUMN(nullable = flase) !!!!
            // CECI EST TRÈS FAUX !!! :  LigneDeCommande ligneCmd = new LigneDeCommande();  

             LigneDeCommande.TypeLigneDeCommande typeLigneDeCommande = LigneDeCommande.TypeLigneDeCommande.COMMANDE;
             LigneDeCommande ligneCmd = new LigneDeCommande(quantite, typeLigneDeCommande);
            // -----------------------------------------------------------------------------------------------------------------

            //Récuperation de l'article à partir de son id (idArticle) 
            Article art = daoArticle.findOne(idArticle);    
             
            /* ligne de commande "ligneCmd" sera associée à l'article "art"  
                et aussi sera associée à la commande "commande"(obtenue ou créée) 
                puis cette ligne de commande sera rajoutée dans la Base de données:
            */
             ServiceLigneDeCommande.ajouterLigneDeCommande(ligneCmd, commande, art, quantite);
            // -----------------------------------------------------------------------------------------------------------------

            
             System.out.println();System.out.println();System.out.println("------------------------------------------------------------------------------------");  
             System.out.println("AJOUT DE LA COMMANDE EN BASE DE DONNEES");
             System.out.println();System.out.println();System.out.println("------------------------------------------------------------------------------------");        
        
        }else{
            System.out.println();System.out.println();System.out.println("------------------------------------------------------------------------------------");  
            System.out.println("LE CLIENT  " + idClient + "  N'EXISTE PAS, DONC AUCUN AJOUT DE LIGNE DE COMMANDE CAR PAS DE PANIER (PAS DE COMMANDE) POUR UN CLIENT INEXISTANT.");
            System.out.println();System.out.println();System.out.println("------------------------------------------------------------------------------------");        
        }
   }
    
    
   
   
   
   
    public void validerPanierEnCours(long idClient){
          Client client = this.daoClient.findOne(idClient);
                  
          if(client != null) { 
             
                Commande commande = this.daoCommande.findOneByClientIdAndEtatPanier(idClient, Commande.EtatPanier.ENCOURS);
                if(commande != null){  //toutes les commande sont dans l'état VALIDE
                    commande.setEtatDuPanier( Commande.EtatPanier.VALIDE );
                    daoCommande.save(commande);
                }
          }
    }
    
    
    
  
    public List<Commande> afficherListeCommande(){
        return (List<Commande>) daoCommande.findAll();
    }
    
    /*
    private static Commande creerCommandeParDefaut(){
            Double montantTotal = 0.00;         //Valeur par défaut
            String cgv = "cgv1";                //Valeur par défaut
            Integer tva = 19;                   //Valeur par défaut
            Commande.EtatPanier etatDuPanier = Commande.EtatPanier.ENCOURS;

            Commande  commande = new Commande(montantTotal, cgv,  tva, etatDuPanier);

            commande.setDateLivraisonCommande(new Date()); //Valeur par défaut
            commande.setDate(new Date());                  //Valeur par défaut
            commande.setMoyenDePaiement(Commande.MoyenDePaiement.VIREMENT);  //Valeur par défaut
            return commande;
    }
   */
    
    
   

}
