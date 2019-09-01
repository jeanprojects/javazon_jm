/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javazon_jm.test;

import java.util.List;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;
import javazon_jm.entity.Client;
import javazon_jm.service.ClientService;
import javazon_jm.spring.SpringConfig;


/**
 * @author Jean-Marie
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = SpringConfig.class)
@Rollback(false)
@Transactional
public class ClientServiceTest {

    @Autowired
    private ClientService clientS;

    @Test
    public void creerClientOK(){
        String nom = "Jean";
        String mail = "jeanjmjm@gmail.com";
        String password = "123poi";
        Integer pointFidelite = 200;
        
        Client client = new Client(nom, mail, password,pointFidelite);
        clientS.ajouterClient(client);
        
        Client client2 = new Client("Elisabeth", "elisabeth@gmail.com", "eli456",400);
        clientS.ajouterClient(client2);
    }
    
    @Test
    public void seConnecterAuSiteOK(){
        System.out.println();System.out.println("seConnecter OK=====================================================");
       
        //Données obtenues de la vue 
        String mail = "jeanjmjm@gmail.com";
        String password = "123poi";
        
        Client client = new Client();
        client.setMail(mail );
        client.setPassword(password);   
        clientS.seConnecterAuSite(client);
    }
    
    
    @Test
    public void seConnecterAuSiteKO(){
         Client client = new Client();
         client.setMail("clientNonExistantEnBD@gmail.com");
         client.setPassword("000000");
         clientS.seConnecterAuSite(client);
    }
    
    
    @Test
    public void supprimerClientOK(){
        String nomClient = "Elisabeth"; 
        String mailClient = "elisabeth@gmail.com";
        clientS.supprimerClient(nomClient, mailClient);
    }
    
    
    
    @Test
    public void supprimerClientKO(){
        String nomClient = "PasClient_PasEnBaseDeDonnées"; 
        String mailClient = "clientNonExistantEnBD@gmail.com";
        clientS.supprimerClient(nomClient, mailClient);
    }
    
    
    
    
    @Test
    public void afficherListeClientOK(){
        List<Client> listeClients = clientS.afficherListeClients();
        
        System.out.println();System.out.println("=============================================================================================================================");
        System.out.println("METHODE afficherListeClientOK() :  VOICI TOUS LES CLIENTS ");
        System.out.println();
        
        for (Client client_ieme : listeClients) {
               System.out.println( client_ieme.toString() );
        }
        System.out.println();System.out.println("=============================================================================================================================");   
    
    }
    
    
    
    
    @Test
    public void afficherClientParNomOK() {
        String nom = "Jean";
        List<Client> listeClients = clientS.afficherClientParNom(nom);
        
        System.out.println();System.out.println("=============================================================================================================================");
        System.out.println("METHODE afficherClientParNomOK() :  VOICI TOUS LES CLIENTS AYANT POUR NOM  " + nom);
        System.out.println();
        
        for (Client client_ieme : listeClients) {
            
              System.out.println( client_ieme.toString() ); 
              System.out.println();
        }
        System.out.println();System.out.println("=============================================================================================================================");   
    
    }
    
    
    
    
    //Condition du test: il n'y a aucun client ayant le nom Luc en BD
    @Test
    public void afficherClientParNomKO() {
        String nom = "LUC";
        List<Client> listeClients = clientS.afficherClientParNom(nom); 
        
        
        System.out.println();System.out.println("=============================================================================================================================");
        System.out.println("METHODE afficherClientParNomKO() :  VOICI TOUS LES CLIENTS AYANT POUR NOM  " + nom);
        System.out.println();
        
        for (Client client_ieme : listeClients) {
              System.out.println( client_ieme.toString() );
              System.out.println();
        }
        System.out.println();System.out.println("=============================================================================================================================");   
    
    }
    
    
   
   @Test
    public void afficherClientParMailOK() {
        String mailClient = "jeanjmjm@gmail.come";
        Client  client = clientS.afficherClientParMail(mailClient);
        
        System.out.println();System.out.println("=============================================================================================================================");
        if(client != null){
            System.out.println("METHODE afficherClientParMailOK() :  VOICI LE CLIENT "  + client.toString());
        }else{
            System.out.println("METHODE afficherClientParMailOK() :  VOICI LE CLIENT "  + client);
        }
        System.out.println();System.out.println("=============================================================================================================================");   
    
     }
    
    
    

    @Test
    public void afficherClientParMailAndPasswordOK() {
        String mailClient = "jeanjmjm@gmail.com";
        String nomClient = "Jean";
        Client client = clientS.afficherClientParMailAndPassword(mailClient, nomClient);
 
        System.out.println();System.out.println("=============================================================================================================================");
        if(client != null){
             System.out.println("METHODE afficherClientParMailAndPasswordOK() :  VOICI LE CLIENT "  + client.toString());
        }else{
            System.out.println("METHODE afficherClientParMailAndPasswordOK() :  VOICI LE CLIENT "  + client);
        }
        System.out.println();System.out.println("=============================================================================================================================");   
    }
    
    
    
    
    @Test
    public void afficherClientParMailAndPasswordKO() {
        String nomClient = "PasClient_PasEnBaseDeDonnées"; 
        String mailClient = "clientNonExistantEnBD@gmail.com";
        Client client = clientS.afficherClientParMailAndPassword(mailClient, nomClient);
        
        System.out.println();System.out.println("=============================================================================================================================");
        System.out.println("METHODE afficherClientParMailAndPasswordKO() :  VOICI LE CLIENT N'EXISTE PAS EN BD:  "  + client);
        System.out.println();System.out.println("=============================================================================================================================");   
    
    }
    

    
    //CE TEST EST TRÈS MAUVAIS, CAR DANS LA BD IL Y A PLUSIEURS CLIENTS QUI PEUVENT AVOIR LE MÊME NOM
    //DONC ON SUPPRIMERAIS AINSI UN AUTRE CLIENT QUE CELUI QUE L'ON SOUHAITAIS SUPPRIMER
    //    @Test
    //    public void supprimerClientOK(){
    //        clientS.supprimerClient("TUTU");
    //    }

}
