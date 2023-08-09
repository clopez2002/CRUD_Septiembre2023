package pildoras.es.controlador;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pildoras.es.controlador.entity.Runner;
import pildoras.es.dao.DAO;

import java.util.List;

@org.springframework.stereotype.Controller      // es nuestro controlador, por eso esta anotacion
@RequestMapping("/runnersHomeURL")
public class Controller {


    @Autowired
    private DAO daoClient;

/*******************************************************************/


    @RequestMapping("/runnersListURL")
    public String runnerListMethod (Model oneModel){

        // Obtener los runners desde el DAO

        List<Runner> runnerList = daoClient.getRunnerList();

        // agragar los runners al Modelo

        oneModel.addAttribute("runnersAttributes", runnerList); // runnersAttributes es el nombre que tendra, y los saca de la lista de runner

        return "runnerListFile";
    }

/*******************************************************************/


/*******************************************************************/


/*******************************************************************/


/*******************************************************************/


/*******************************************************************/


/*******************************************************************/


/*******************************************************************/


/*******************************************************************/

}
