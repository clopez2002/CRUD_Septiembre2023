package pildoras.es.controlador;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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

    @RequestMapping("/insertNewRunnerURL")
    public String insertNewRunnerMethod (Model oneModel){

        // aca demos crear un nuevo runner y luego agregarlo al modelo,
        // bind de datos de los runners

        Runner oneRunner = new Runner();

        //agregamos el nuevo Runner al modelo

        oneModel.addAttribute("insertedRunnerAttributes", oneRunner); // nombre del atributo

        return "insertNewRunnerFile";
    }


/*******************************************************************/

    @PostMapping("/processRunnerInsertedURL")
    public String processRunnerInsertedMethod (@ModelAttribute("insertedRunnerAttributes") Runner theRunner) {

        // insertar runner en BBDD

        daoClient.insertNewRunner (theRunner);

        // luego de insertar volvemos a la lista de runners, por lo que redireccinoamos
        return "redirect:/runnersHomeURL/runnersListURL";
    }


/*******************************************************************/


/*******************************************************************/


/*******************************************************************/


/*******************************************************************/


/*******************************************************************/


/*******************************************************************/

}
