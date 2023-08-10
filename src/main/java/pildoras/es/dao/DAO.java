package pildoras.es.dao;

import pildoras.es.controlador.entity.Runner;

import java.util.List;

public interface DAO {

    public List<Runner> getRunnerList ();

    void insertNewRunner(Runner theRunner);

    Runner getOneRunnerById(int id);
}
