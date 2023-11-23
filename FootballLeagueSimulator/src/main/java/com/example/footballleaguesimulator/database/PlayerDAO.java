package com.example.footballleaguesimulator.database;

import com.example.footballleaguesimulator.model.Player;
import com.example.footballleaguesimulator.model.Team;
import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

public class PlayerDAO {
    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("FootballLeagueSimulator");
    private static final EntityManager em = emf.createEntityManager();

    public boolean createPlayer(Player player) {
        try {
            em.getTransaction().begin();
            em.persist(player);
            em.getTransaction().commit();
            return true;
        } catch(Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public Player readPlayer(int playerId) {
        try {
            em.getTransaction().begin();
            Player player = em.find(Player.class, playerId);
            em.getTransaction().commit();
            return player;
        } catch(Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<Player> readAllPlayers() {
        try {
            Query query = em.createQuery("SELECT p FROM Player p");
            return query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }


    public boolean updatePlayer(Player player) {

        try {
            em.getTransaction().begin();
            em.merge(player);
            em.getTransaction().commit();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean deletePlayer(int playerId) {
        try {
            em.getTransaction().begin();
            Player reference = em.getReference(Player.class, playerId);
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

