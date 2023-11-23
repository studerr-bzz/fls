package com.example.footballleaguesimulator.model;

import jakarta.persistence.*;

@Entity
@Table(name = "Game")
public class Game {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "gameId")
    private int gameId;
    @Column(name = "homeTeam")
    private String homeTeam;
    @Column(name = "awayTeam")
    private String awayTeam;
    @Column(name = "homeGoals")
    private int homeGoals;
    @Column(name = "awayGoals")
    private int awayGoals;
    @Column(name = "gameWeek")
    private int gameWeek;

    public Game(int gameId, String homeTeam, String awayTeam, int homeGoals, int awayGoals, int gameWeek) {
        this.gameId = gameId;
        this.homeTeam = homeTeam;
        this.awayTeam = awayTeam;
        this.homeGoals = homeGoals;
        this.awayGoals = awayGoals;
        this.gameWeek = gameWeek;
    }

    public Game() {

    }

    public int getGameId() {
        return gameId;
    }

    public void setGameId(int gameId) {
        this.gameId = gameId;
    }

    public String getHomeTeam() {
        return homeTeam;
    }

    public void setHomeTeam(String homeTeam) {
        this.homeTeam = homeTeam;
    }

    public String getAwayTeam() {
        return awayTeam;
    }

    public void setAwayTeam(String awayTeam) {
        this.awayTeam = awayTeam;
    }

    public int getHomeGoals() {
        return homeGoals;
    }

    public void setHomeGoals(int homeGoals) {
        this.homeGoals = homeGoals;
    }

    public int getAwayGoals() {
        return awayGoals;
    }

    public void setAwayGoals(int awayGoals) {
        this.awayGoals = awayGoals;
    }

    public int getGameWeek() {
        return gameWeek;
    }

    public void setGameWeek(int gameWeek) {
        this.gameWeek = gameWeek;
    }
}
