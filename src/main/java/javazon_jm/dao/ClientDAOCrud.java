/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javazon_jm.dao;

import java.io.Serializable;
import java.util.List;
import javax.persistence.metamodel.SingularAttribute;
import org.springframework.data.repository.CrudRepository;
import javazon_jm.entity.Article;
import javazon_jm.entity.Client;

/**
 *
 * @author JM
 */
public interface ClientDAOCrud extends CrudRepository<Client, Long>{
    
    List<Client> findByNom(String nom);
    Client findByMail(String mail);
    Client findByNomAndMail(String nom, String mail);
    Client findByMailAndPassword(String mail, String password);

 

    
}
