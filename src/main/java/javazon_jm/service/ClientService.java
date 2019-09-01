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
import javazon_jm.dao.ClientDAOCrud;
import javazon_jm.entity.Client;
import static javazon_jm.entity.Client_.mail;
import javazon_jm.entity.Commentaire;


/**
 * @author Jean-Marie
 */
@Transactional
@Service
public class ClientService {

    @Autowired
    private ClientDAOCrud dao;

    
    
    
    public void ajouterClient(Client client) {
       Client clientDansBD = dao.findByMailAndPassword(client.getMail(), client.getPassword()) ;
       
       if(clientDansBD == null){
           dao.save(client);   
       }
    }

    
    
    
    public void seConnecterAuSite(Client client) {
         Client clientDansBD = dao.findByMailAndPassword(client.getMail(), client.getPassword() );
        
        //le client n'existe pas en Base de données 
        //et donc on ne réalise aucune connection au site
        
        if(clientDansBD == null){
            
            System.out.println();System.out.println("=============================================================");
            System.out.println("VOUS n'ÊTES PAS UN CLIENT, PAS DE CONNECTION DU CLIENT : "  + clientDansBD);
            System.out.println();System.out.println("============================================================");
            
            
        }else {//le client existe en Base de données donc on réalise sa connection au site
            
            System.out.println();System.out.println("=============================================================");
            System.out.println("FAIRE LA CONNECTION DU CLIENT : "  + clientDansBD);
            System.out.println();System.out.println("=============================================================");
            
            //RESTE À IMPLEMENTER LA CONNECTION AU SITE
        }
                
    }

    
    
    public void supprimerClient(String nomClient, String mailClient) {
        Client clientDansBD = dao.findByNomAndMail(nomClient, mailClient);
        
        if(clientDansBD != null){  
            
            dao.delete(clientDansBD);
            
        }else{ //le client n'existe pas en Base de données 
               //donc aucune suppretion possible.
            System.out.println();System.out.println("=============================================================================================================================");
            System.out.println("ERREUR AUCUNE SUPPRESSION RÉALISÉE: "  + nomClient + "  AYANT POUR MAIL  " + mailClient  + "  N'EST PAS UN CLIENT ET N'EST PAS CONTENU DANS LA BD");
            System.out.println();System.out.println("=============================================================================================================================");   
        }
       
    }
    
    
    //CE CODE CI-DESSOUS ANCIEN POUR SUPPRIMER UN CLIENT EST FAUX :
    // CAR DANS LA BD IL Y A PLUSIEURS CLIENTS QUI PEUVENT AVOIR LE MÊME NOM
    //DONC ON SUPPRIMERAIS AINSI UN AUTRE CLIENT QUE CELUI QUE L'ON SOUHAITAIS SUPPRIMER
    //public void supprimerClient(String nomClient) {
    //    dao.delete(dao.findByNom(nomClient));
    //}

    
    
    //retourne la liste de tous les clients se trouvant dans la base de données
    public List<Client> afficherListeClients() {
        return (List<Client>) dao.findAll();
    }

    
    //retourne une liste de clients ayant tous le nom qui est contenu dans le 
    //paramètre @nomClient. On peut retrouver plusieurs clients dans la BD ayant le même nom.
    public List<Client> afficherClientParNom(String nomClient) {
        List<Client>  tousLesClientsAyantCeNom = dao.findByNom(nomClient) ;   
        return tousLesClientsAyantCeNom;
    }
    
    
    //Renvoie un seul client car le mail est unique pour chaque client 
    public Client afficherClientParMail(String mailClient) {
        return dao.findByMail(mailClient);
    }
    
    
    
    public Client afficherClientParMailAndPassword(String mailClient, String passwordClient){
        return dao.findByMailAndPassword(mailClient, passwordClient);
    }
}
