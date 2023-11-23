package com.example.footballleaguesimulator.database;

import jakarta.persistence.*;
import com.example.footballleaguesimulator.model.League;

import java.util.ArrayList;

public class LeagueDAO {
    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("FootballLeagueSimulator");
    private static final EntityManager em = emf.createEntityManager();

    public boolean createLeague(League league) {
        try {
            em.getTransaction().begin();
            em.persist(league);
            em.getTransaction().commit();
            return true;
        } catch(Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public League readLeague(int leagueId) {
        try {
            em.getTransaction().begin();
            League league = em.find(League.class, leagueId);
            em.getTransaction().commit();
            return league;
        } catch(Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    public ArrayList<League> readAll() {
        //Check if a transaction is already active
        if (!em.getTransaction().isActive()) {
            em.getTransaction().begin();
        }

        //Query
        Query q = em.createQuery("SELECT m FROM League m", League.class);
        ArrayList<League> result = (ArrayList<League>) q.getResultList();

        //Check if a transaction is already active and got started from this methode
        if (em.getTransaction().isActive() && em.getTransaction().getRollbackOnly()) {
            //Rollback, as the transaction was started by this method but not committed
            em.getTransaction().rollback();
        } else {
            em.getTransaction().commit();
        }
        return result;
    }


    public boolean updateLeague(League league) {
        try {
            em.getTransaction().begin();
            em.merge(league);
            em.getTransaction().commit();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean deleteLeague(int leagueId) {
        try {
            em.getTransaction().begin();
            League reference = em.getReference(League.class, leagueId);
            em.remove(reference);
            em.getTransaction().commit();
            return true;
        } catch(Exception e) {
            e.printStackTrace();
            if (em.getTransaction().isActive() && em.getTransaction().getRollbackOnly()) {
                em.getTransaction().rollback();
            }
            return false;
        }
    }

}

