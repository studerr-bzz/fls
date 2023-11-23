package com.example.footballleaguesimulator.model;

import jakarta.persistence.*;

@Entity
@Table(name = "Player")
public class Player {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "playerId")
    private int playerId;
    @Column(name = "playerName")
    private String playerName;
    @Column(name = "position")
    private String position;
    @Column(name = "goalsScored")
    private int goalsScored;
    @Column(name = "playerRating")
    private int playerRating;
    private Team teamId = new Team();

    public Player(int playerId, String playerName, String position, int goalsScored, int playerRating, Team teamId) {
        this.playerId = playerId;
        this.playerName = playerName;
        this.position = position;
        this.goalsScored = goalsScored;
        this.playerRating = playerRating;
        this.teamId = teamId;
    }

    public Player(String playerName, String position, int playerRating, Team teamId) {
        this.playerName = playerName;
        this.position = position;
        this.playerRating = playerRating;
        this. teamId = teamId;
    }

    public Player(int playerId, int goalsScored) {
        this.playerId = playerId;
        this.goalsScored = goalsScored;
    }

    public Player() {

    }

    public int getPlayerId() {
        return playerId;
    }

    public void setPlayerId(int playerId) {
        this.playerId = playerId;
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public int getGoalsScored() {
        return goalsScored;
    }

    public void setGoalsScored(int goalsScored) {
        this.goalsScored = goalsScored;
    }

    public int getPlayerRating() {
        return playerRating;
    }

    public void setPlayerRating(int playerRating) {
        this.playerRating = playerRating;
    }

    public Team getTeamId() {
        return teamId;
    }

    public void setTeamId(Team teamId) {
        this.teamId = teamId;
    }
}