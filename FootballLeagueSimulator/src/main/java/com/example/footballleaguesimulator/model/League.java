package com.example.footballleaguesimulator.model;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "League")
public class League {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "leagueId")
    private int leagueId;
    @Column(name = "leagueName")
    private String leagueName;
    @ManyToOne
    @JoinColumn(name = "teamId", foreignKey = @ForeignKey(name = "teamId"))
    private Team team = new Team();
    @ManyToOne
    @JoinColumn(name = "gameId", foreignKey = @ForeignKey(name = "gameId"))
    private Game game = new Game();
    //private List<String> allTeams;
    //private List<Game> futureMatches = new ArrayList<Game>();

    public League(int leagueId, String leagueName, Team team, Game game) {
        this.leagueId = leagueId;
        this.leagueName = leagueName;
        this.team = team;
        this.game = game;
    }

    public League() {

    }

    public int getLeagueId() {
        return leagueId;
    }

    public void setLeagueId(int leagueId) {
        this.leagueId = leagueId;
    }

    public String getLeagueName() {
        return leagueName;
    }

    public void setLeagueName(String leagueName) {
        this.leagueName = leagueName;
    }

    public Team getTeam() {
        return team;
    }

    public void setTeam(Team team) {
        this.team = team;
    }

    public Game getGame() {
        return game;
    }

    public void setGame(Game game) {
        this.game = game;
    }
}
