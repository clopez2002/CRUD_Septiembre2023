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

        // mySession.save(theRunner); este es solo para guardasr uno nuevo y vamos a usar el guardar O actualizar

        mySession.saveOrUpdate(theRunner);

    }

/*******************************************************************/

    @Override
    @Transactional
    public Runner getOneRunnerById(int id) {

        // obtener la sesion

        Session mySession = sessionFactory.getCurrentSession();

        Runner oneRunner = mySession.get(Runner.class, id);

        return oneRunner;
    }

/*******************************************************************/

    @Override
    @Transactional
    public void deleteRunnerById(int id) {


        // obtener la sesion

        Session mySession = sessionFactory.getCurrentSession();

        Query myQwery = mySession.createQuery("delete from Runner where id =: IDRunner");

        myQwery.setParameter("IDRunner", id);

        myQwery.executeUpdate();

    }

/*******************************************************************/

    @Override
    @Transactional
    public Runner getRunnerByDorsal(int dorsalBuscado) {

        // obtener la sesion

        Session mySession = sessionFactory.getCurrentSession();

        String dorsal = String.valueOf(dorsalBuscado);

        String query = "SELECT runner from Runner runner WHERE dorsal="+dorsal;

        Runner theRuner = (Runner) mySession.createQuery(query).uniqueResult();


        return theRuner;
    }



/*******************************************************************/

/*******************************************************************/
}
