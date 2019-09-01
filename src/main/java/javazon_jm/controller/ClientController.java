package javazon_jm.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;
import javazon_jm.entity.Client;
import javazon_jm.service.ClientService;


@Transactional
@Service
public class ClientController {
    
    @Autowired
    private ClientService clientServ;
    
    public int findClientByMail(String mailClient, String passwordClient) {
        
        int intCode = 0;  //client existe et son mot de passe introduit est correct
        //clientServ = new ClientService();
        System.out.println();System.out.println();System.out.println(); System.out.println("====================================================================");
        System.out.println("MAIL" + mailClient);
        Client unClient = this.clientServ.afficherClientParMail(mailClient);
        
        

        if (unClient != null) {

            if (!unClient.getPassword().equals(passwordClient)) {
                intCode = -2;  //client existe mais mot de passe introduit par client est faux(incorrect)
            }
        } else {
            intCode = -1;  //client n'existe pas
        }
  
        return intCode;
    }

}
