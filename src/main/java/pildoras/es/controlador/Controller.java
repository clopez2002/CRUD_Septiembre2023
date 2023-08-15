package pildoras.es.controlador;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pildoras.es.controlador.entity.Runner;
import pildoras.es.dao.DAO;

import javax.servlet.http.HttpServletRequest;
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

    // @RequestParam("runnerId") el runnerId un nombre que YO elijo... y
    @GetMapping("/updateRunnerURL")
    public String updateRunnerMethod (@RequestParam("runnerId") int Id, Model theModel){

        // obtener el cliente cuyo id le paso

        Runner theRunner = daoClient.getOneRunnerById (Id);

        // establecer el cliente como atributo del modelo

        theModel.addAttribute("runnerAttributeToUpdate", theRunner);

        // enviar el cliente al formulario

        return "updateRunnerFile";
    }


/*******************************************************************/


    @GetMapping("/deleteRunnerURL")
    public String deleteRunnerByIdMethod (@RequestParam("runnerId") int id){


        daoClient.deleteRunnerById(id);

        return "redirect:/runnersHomeURL/runnersListURL";
    }

/*******************************************************************/

    @RequestMapping("/searchRunnerByDorsalURL")
    public String searchRunnerByDorsalMethod (){

        return "searchRunnerByDorsalFile";
    }


/*******************************************************************/

    @RequestMapping("/getRunnerInformationFromDorsalNumberURL")
    public String getRunnerInformationMethod (HttpServletRequest request, Model theModel){

        /*
            em la pagina obtenemos:  <input type="text" name="runnerDorsalToSearch"> este parametro runnerDorsalToSearch
            es el string que nesesitamos...
         */
        int dorsalBuscado = Integer.parseInt(request.getParameter("runnerDorsalToSearch"));

        // buscamos el runner
        Runner oneRunner = daoClient.getRunnerByDorsal(dorsalBuscado);

        // lo agregamos al modelo
        theModel.addAttribute("Attributes", oneRunner);

        return "displayRunnerInformation";
    }


/*******************************************************************/


/*******************************************************************/

}
