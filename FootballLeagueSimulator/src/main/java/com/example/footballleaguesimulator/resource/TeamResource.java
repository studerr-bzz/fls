package com.example.footballleaguesimulator.resource;

import com.example.footballleaguesimulator.database.TeamDAO;
import com.example.footballleaguesimulator.model.Player;
import com.example.footballleaguesimulator.model.Team;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;

import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Path("/teamResource")
public class TeamResource {

    private final TeamDAO tDAO = new TeamDAO();
    private final ArrayList<Team> teams = new ArrayList<>();

    @POST
    @Path("/create")
    public boolean createTeam(@FormParam("teamId") int teamId,
                              @FormParam("teamName") String teamName,
                              @FormParam("coachName") String coachName,
                              @FormParam("teamRating") int teamRating
                             ) {

        Team team = new Team(teamId, teamName, coachName, teamRating);

        return tDAO.createTeam(team);

    }

    @POST
    @Path("createPLO")
    @Produces(MediaType.TEXT_PLAIN)
    public void createPLO(@FormParam("teamId") int teamId,
                          @FormParam("teamName") String teamName,
                          @FormParam("coachName") String coachName,
                          @FormParam("teamRating") int teamRating) {

        Team team = new Team(teamId, teamName, coachName, teamRating);

        tDAO.createTeam(team);

        //response.sendRedirect("http://localhost:8080/FootballLeagueSimulator_war_exploded/leagueOverview.jsp");
    }

    @GET
    @Path("/read")
    @Produces(MediaType.TEXT_PLAIN)
    public Team readTeam(@QueryParam("teamId") int teamId) {

        if(tDAO.readTeam(teamId) == null)
            return null;
        return tDAO.readTeam(teamId);
    }

    @GET
    @Path("/readAll")
    public List<Team> getAllTeams() {
        return tDAO.readAllTeams();
    }

    /*
    @POST
    @Path("/addPlayer")
    @Produces(MediaType.TEXT_PLAIN)
    public String addPlayer(@FormParam("teamId") int teamId,
                            @FormParam("")) {

        PlayerResource playerResource = new PlayerResource();
        int playerId = playerResource.createPlayer(playerName); // This method should return the created player's ID

        // Retrieve the team
        Team team = tDAO.readTeam(teamId);

        if (team == null) {
            return "Team not found";
        }

        // Add the player's ID to the list of player IDs in the team
        List<Player> playersOfTeam = team.getPlayersOfTeam();
        playersOfTeam.add(new Player(playerId)); // Assuming your Player class constructor accepts an ID

        // Set the updated list back to the team
        team.setPlayersOfTeam(playersOfTeam);

        // Update the team with the new player ID
        if (tDAO.updateTeam(team)) {
            return "Player added to the team successfully";
        } else {
            return "Error adding player to the team";
        }
    }*/

    // Update only for List of players
    @PUT
    @Path("/update")
    @Produces(MediaType.TEXT_PLAIN)
    public String updateTeam(@FormParam("teamId") int teamId,
                             @FormParam("points") int points) {

        Team team = new Team(teamId, points);

        tDAO.updateTeam(team);

        return "Points was updated";
    }

    @DELETE
    @Path("/delete/{teamId}")
    @Produces(MediaType.TEXT_PLAIN)
    public String deleteTeam(@PathParam("teamId") int teamId) {

        if(!tDAO.deleteTeam(teamId))
            return "Error";
        return "Match id deleted";
    }

}
