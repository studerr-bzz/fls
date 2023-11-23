package com.example.footballleaguesimulator.database;

import com.example.footballleaguesimulator.model.Game;
import jakarta.persistence.*;
import com.example.footballleaguesimulator.model.League;

import java.util.ArrayList;

public class GameDAO {
    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("FootballLeagueSimulator");
    private static final EntityManager em = emf.createEntityManager();

    public boolean createGame(Game game) {
        try {
            em.getTransaction().begin();
            em.persist(game);
            em.getTransaction().commit();
            return true;
        } catch(Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public Game readGame(int gameId) {
        try {
            em.getTransaction().begin();
            Game game = em.find(Game.class, gameId);
            em.getTransaction().commit();
            return game;
        } catch(Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    public ArrayList<Game> readAll() {
        //Check if a transaction is already active
        if (!em.getTransaction().isActive()) {
            em.getTransaction().begin();
        }

        //Query
        Query q = em.createQuery("SELECT m FROM Game m", Game.class);
        ArrayList<Game> result = (ArrayList<Game>) q.getResultList();

        //Check if a transaction is already active and got started from this methode
        if (em.getTransaction().isActive() && em.getTransaction().getRollbackOnly()) {
            //Rollback, as the transaction was started by this method but not committed
            em.getTransaction().rollback();
        } else {
            em.getTransaction().commit();
        }
        return result;
    }


    public boolean updateGame(Game game) {
        try {
            em.getTransaction().begin();
            em.merge(game);
            em.getTransaction().commit();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean deleteGame(int gameId) {
        try {
            em.getTransaction().begin();
            Game game = em.getReference(Game.class, gameId);
            em.remove(game);
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

