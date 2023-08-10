package pildoras.es.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import pildoras.es.controlador.entity.Runner;

import java.util.List;

@Repository
public class daoClient implements DAO{

    @Autowired  // Para hacer la inyeccion de dependencia
    private SessionFactory sessionFactory;  // tal cual como esta en el archivo XML

/*******************************************************************/

    @Override
    @Transactional  // esto nos evita hacer el BEGIN, COMMIT, y demas
    public List<Runner> getRunnerList() {

        // obtener la sesion

        Session mySession = sessionFactory.getCurrentSession();

        // crear la consulta

        Query<Runner> myQwery = mySession.createQuery("from Runner", Runner.class);

        // Ejecutar la consulta y devolver la lista de runners

        List<Runner> runnerList = myQwery.getResultList();

        return runnerList;
    }

/*******************************************************************/

    @Override
    @Transactional
    public void insertNewRunner(Runner theRunner) {

        // obtener la sesion

        Session mySession = sessionFactory.getCurrentSession();

        // guardamos el runner en la BBDD

        mySession.save(theRunner);

    }



/*******************************************************************/

/*******************************************************************/

/*******************************************************************/

/*******************************************************************/

/*******************************************************************/
}
