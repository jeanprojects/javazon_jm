/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javazon_jm.dao;

import java.io.Serializable;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import javazon_jm.entity.Commentaire;
import javazon_jm.entity.Reclamation;

/**
 *
 * @author JM
 */
public interface ReclamationDAOCrud extends CrudRepository<Reclamation, Long>{
    
    //Reclamation findByReclamation(String reclamation);
    
}
