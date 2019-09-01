/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projetFilRouge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import projetFilRouge.dao.LigneDeCommandeDAOCrud;
import projetFilRouge.entity.LigneDeCommande;
import projetFilRouge.entity.Commande;
import projetFilRouge.entity.Article;


/**
 * @author Jean-Marie
 */

@Transactional
@Service
public class LigneDeCommandeService {

    @Autowired
    private LigneDeCommandeDAOCrud dao;
    
    public void ajouterLigneDeCommande(LigneDeCommande ligneCmd, Commande uneCommande, Article unArticle, Integer quantite){
         
        if ( (uneCommande != null)  &&  (unArticle != null) ) {
             
            unArticle.getListeLigneDeCommandes().add(ligneCmd);
            ligneCmd.setArticle(unArticle);
            ligneCmd.setQuantiteArticle(quantite);
             
            uneCommande.getListeLignedecommande().add(ligneCmd);
            ligneCmd.setCommande(uneCommande);
            
            Double montantTotalLigneDeCommande = quantite * unArticle.getPrixHT();
            uneCommande.setActualiserMontantExistant(montantTotalLigneDeCommande);
            
            Integer quantiteArticleEnStock = unArticle.getQuantiteStock();
            unArticle.setQuantiteStock( quantiteArticleEnStock - quantite );
            
            dao.save(ligneCmd);
        }
    }
    
    
    public void supprimerLigneDeCommande(long idLigneDeCommande){
          if(dao.findOne(idLigneDeCommande) != null) {
             dao.delete(dao.findOne(idLigneDeCommande));
         }else{
              System.out.println("La reclamation avec id " + idLigneDeCommande + "n'existe pas en BD");
        }
    }
    
    public void modifierQuantiteLigneDeCommande(LigneDeCommande ligneCmd, Integer quantite){
        LigneDeCommande ligneDeCmd = dao.findOne(ligneCmd.getId());
        ligneDeCmd.setQuantiteArticle(quantite);
        dao.save(ligneDeCmd);
    }

}
