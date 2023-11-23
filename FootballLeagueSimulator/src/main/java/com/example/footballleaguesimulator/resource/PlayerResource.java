package com.example.footballleaguesimulator.resource;

import com.example.footballleaguesimulator.database.PlayerDAO;
import com.example.footballleaguesimulator.database.TeamDAO;
import com.example.footballleaguesimulator.model.Player;
import com.example.footballleaguesimulator.model.Team;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Path("/playerResource")
public class PlayerResource {

    private final PlayerDAO pDAO = new PlayerDAO();
    private final ArrayList<Player> players = new ArrayList<>();
    TeamDAO tDAO = new TeamDAO();

    @POST
    @Path("create")
    @Produces(MediaType.TEXT_PLAIN)
    public void createPlayer(@FormParam("playerName") String playerName,
                             @FormParam("position") String position,
                             @FormParam("playerRating") int playerRating,
                             @FormParam("teamId") int teamId,
                             @Context HttpServletResponse response) throws IOException {

        Team team = tDAO.readTeam(teamId);

        Player player = new Player(playerName, position, playerRating, team);

        pDAO.createPlayer(player);

        response.sendRedirect("http://localhost:8080/FootballLeagueSimulator_war_exploded/firstPlayers.jsp");
    }

    @POST
    @Path("createPAP")
    @Produces(MediaType.TEXT_PLAIN)
    public void createPAP(@FormParam("playerName") String playerName,
                             @FormParam("position") String position,
                             @FormParam("playerRating") int playerRating,
                             @FormParam("teamId") int teamId,
                             @Context HttpServletResponse response) throws IOException {

        Team team = tDAO.readTeam(teamId);

        Player player = new Player(playerName, position, playerRating, team);

        pDAO.createPlayer(player);

        response.sendRedirect("http://localhost:8080/FootballLeagueSimulator_war_exploded/addPlayer.jsp");
    }

    @GET
    @Path("/read/{playerId}")
    @Produces(MediaType.TEXT_PLAIN)
    public Player readPlayer(@PathParam("playerId") int playerId) {

        return pDAO.readPlayer(playerId);
    }

    @GET
    @Path("/readAll")
    public List<Player> getAllPlayers() {
        return pDAO.readAllPlayers();
    }

    // Update only for List of players
    @PUT
    @Path("/update")
    @Produces(MediaType.TEXT_PLAIN)
    public String updateTeam(@FormParam("playerId") int playerId,
                             @FormParam("goalsScored") int goalsScored) {

        Player player = new Player(playerId, goalsScored);

        pDAO.updatePlayer(player);

        return "Points was updated";
    }

    @DELETE
    @Path("/delete/{playerId}")
    @Produces(MediaType.TEXT_PLAIN)
    public String deleteTeam(@PathParam("playerId") int playerId) {

        if(!tDAO.deleteTeam(playerId))
            return "Error";
        return "Player id deleted";
    }

}
