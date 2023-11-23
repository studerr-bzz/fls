package com.example.footballleaguesimulator.database;

import jakarta.persistence.*;
import com.example.footballleaguesimulator.model.Team;

import java.util.ArrayList;
import java.util.List;

public class TeamDAO {


    private final EntityManager em;

    // Constructor, so that java knows the Object (Team) should be created in the DAO
    public TeamDAO() {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("FootballLeagueSimulator");
        em = entityManagerFactory.createEntityManager();
    }

    public boolean createTeam(Team team) {
        try {
            em.getTransaction().begin();
            em.persist(team);
            em.getTransaction().commit();
            return true;
        } catch(Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public Team readTeam(int teamId) {
        try {
            em.getTransaction().begin();
            Team league = em.find(Team.class, teamId);
            em.getTransaction().commit();
            return league;
        } catch(Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    public List<Team> readAllTeams() {
        try {
            Query query = em.createQuery("SELECT t FROM Team t");
            return query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }


    public boolean updateTeam(Team team) {

        try {
            em.getTransaction().begin();
            em.merge(team);
            em.getTransaction().commit();
            return true;
        } catch (Exception e) {
            return false;
        }
        /*try {
            em.getTransaction().begin();
            Team team1 = em.find(Team.class, team.getTeamId());
            team1.setTeamId(team.getTeamId());
            team1.setTeamName(team.getTeamName());
            em.merge(team1);
            em.getTransaction().commit();
            return true;
        } catch(Exception e) {
            e.printStackTrace();
            return false;
        }*/
    }

    public boolean deleteTeam(int teamId) {
        try {
            em.getTransaction().begin();
            Team reference = em.getReference(Team.class, teamId);
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

