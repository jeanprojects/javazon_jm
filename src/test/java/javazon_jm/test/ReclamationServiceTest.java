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
import javazon_jm.dao.CommandeDAOCrud;
import javazon_jm.entity.Article;
import javazon_jm.entity.Reclamation;
import javazon_jm.entity.Commande;
import javazon_jm.service.ClientService;
import javazon_jm.service.ReclamationService;
import javazon_jm.spring.SpringConfig;

/**
 *
 * @author jean-marie
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = SpringConfig.class)
@Rollback(false)
@Transactional
public class ReclamationServiceTest {

    @Autowired
    private ReclamationService reclamationS;
    
    @Autowired
    private CommandeDAOCrud daoCommande;
      
    @Test
    public void creerReclamationOK() {
        Reclamation r = new Reclamation("Reclamation 1");
        Commande c = daoCommande.findOne(1L);     //cette commande doit pas exister en BD
        reclamationS.ajouterReclamation(r, c);
    }
    @Test
    public void creerReclamation2OK() {
        Reclamation r = new Reclamation("Reclamation 2");
        Commande c = daoCommande.findOne(1L);     //cette commande doit pas exister en BD
        reclamationS.ajouterReclamation(r, c);
    }
    
    @Test
    public void creerReclamationKO() {
        Reclamation r = new Reclamation("Reclamation 1");
        Commande c = daoCommande.findOne(1000L);   //cette commande ne doit pas exister en BD
        reclamationS.ajouterReclamation(r, c);
    }

}
