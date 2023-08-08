package pildoras.es.controlador;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@org.springframework.stereotype.Controller      // es nuestro controlador, por eso esta anotacion
@RequestMapping("/runnersHomeURL")
public class Controller {

    @RequestMapping("/runnersListURL")
    public String runnerListMethod (Model oneModel){

        return "runnerListFile";
    }
}
