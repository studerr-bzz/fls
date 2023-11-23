package com.example.footballleaguesimulator.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.Null;

@Entity
@Table(name = "Team")
public class Team {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "teamId")
    private int teamId;
    @Column(name = "teamName")
    private String teamName;
    @Column(name = "coachName")
    private String coachName;
    @Column(name = "teamRating")
    private int teamRating;
    @Null
    @Column(name = "points")
    private int points;

    public Team(int teamId, String teamName, String coachName, int teamRating, int points) {
        this.teamId = teamId;
        this.teamName = teamName;
        this.coachName = coachName;
        this.teamRating = teamRating;
        this.points = points;
    }

    public Team(int teamId, String teamName, String coachName, int teamRating) {
        this.teamId = teamId;
        this.teamName = teamName;
        this.coachName = coachName;
        this.teamRating = teamRating;
    }

    public Team(String teamName, String coachName, int teamRating) {
        this.teamName = teamName;
        this.coachName = coachName;
        this.teamRating = teamRating;
    }

    public Team(int teamId, int points) {
        this.teamId = teamId;
        this.points = points;
    }

    public Team() {
    }

    public int getTeamId() {
        return teamId;
    }

    public void setTeamId(int teamId) {
        this.teamId = teamId;
    }

    public String getTeamName() {
        return teamName;
    }

    public void setTeamName(String teamName) {
        this.teamName = teamName;
    }

    public String getCoachName() {
        return coachName;
    }

    public void setCoachName(String coachName) {
        this.coachName = coachName;
    }

    public int getTeamRating() {
        return teamRating;
    }

    public void setTeamRating(int teamRating) {
        this.teamRating = teamRating;
    }

    public int getPoints() {
        return points;
    }

    public void setPoints(int points) {
        this.points = points;
    }
}
