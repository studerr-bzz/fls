<%@ page import="com.example.footballleaguesimulator.database.PlayerDAO" %>
<%@ page import="com.example.footballleaguesimulator.model.Player" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.footballleaguesimulator.database.TeamDAO" %>
<%@ page import="com.example.footballleaguesimulator.model.Team" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="playerBean" scope="page" class="com.example.footballleaguesimulator.database.PlayerDAO"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Create Players</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

</head>
<body>
<%
    PlayerDAO pDAO = new PlayerDAO();
    List<Player> players = pDAO.readAllPlayers();

    TeamDAO tDAO = new TeamDAO();
    List<Team> teams = tDAO.readAllTeams();
%>

<div class="container">
    <div class="row pt-4 pb-5">
        <div class="col-12">
            <h1 class="firstTeamsTitle">Create first players</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-2"></div>
        <div class="col-3 align-center">
            <h3 class="pb-4">Create new Player</h3>
            <form action="webapi/playerResource/create" method="post">
                <div class="form-floating pb-3">
                    <input type="text" id="playerName" class="form-control" name="playerName" placeholder="Name" required>
                    <label for="playerName">Name</label>
                </div>

                <div class="form-floating pb-3">
                    <select class="form-select form-select-sm select-dropdown form-control" aria-label=".form-select-sm example" id="position" placeholder="Position" name="position" required>
                        <option value="">Select a Position</option>
                        <option value="GK">GK</option>
                        <option value="SW">SW</option>
                        <option value="CB">CB</option>
                        <option value="RCB">RCB</option>
                        <option value="LCB">LCB</option>
                        <option value="RB">RB</option>
                        <option value="LB">LB</option>
                        <option value="CDM">CDM</option>
                        <option value="RDM">RDM</option>
                        <option value="LDM">LDM</option>
                        <option value="RWB">RWB</option>
                        <option value="LWB">LWB</option>
                        <option value="CM">CM</option>
                        <option value="RCM">RCM</option>
                        <option value="LCM">LCM</option>
                        <option value="RM">RM</option>
                        <option value="LM">LM</option>
                        <option value="CAM">CAM</option>
                        <option value="RAM">RAM</option>
                        <option value="LAM">LAM</option>
                        <option value="RW">RW</option>
                        <option value="LW">LW</option>
                        <option value="CS">CS</option>
                        <option value="RS">RS</option>
                        <option value="LS">LS</option>
                    </select>
                    <label for="position">Position</label>
                </div>

                <div class="form-floating pb-3">
                    <input type="text" id="playerRating" class="form-control" name="playerRating" placeholder="Rating" required>
                    <label for="playerRating">Rating</label>
                </div>

                <div class="form-floating pb-4">
                    <select class="form-select form-select-sm select-dropdown form-control" aria-label=".form-select-sm example" id="selectTeam" placeholder="Select team" name="teamId" required>
                        <option value="">Select a Team</option>
                        <c:forEach var="team" items="<%=teams%>">
                            <option name="teamId" value="${team.teamId}">${team.teamName}</option>
                        </c:forEach>
                    </select>
                    <label for="selectTeam">Team</label>
                </div>

                <input type="reset" class="btn btn-danger shadow mt-5" value="Reset">
                <input type="submit" class="btn btn-success shadow mt-5" value="Create player">
            </form>
        </div>
        <div class="col-2"></div>
        <div class="col-3 align-center position-relative">
            <h3 class="pb-4">Players created</h3>
            <div class="overflow-auto" style="max-height: 290px">
                <table class="table">
                    <tbody>
                    <c:forEach var="player" items="<%=players%>">
                        <tr>
                            <td class="data lead text-start"><c:out value="${player.playerName}"/></td>
                            <td class="text-end"><a onclick="deletePlayer('${player.playerId}')"><button type="button" class="btn btn-danger shadow"><img src='img/trash.svg' alt='trash'></button></a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <a class="btn btn-secondary btn-bottom shadow" href="homePage.jsp" role="button">Start league with these players and teams</a>
        </div>
        <div class="col-2"></div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="js/script.js"></script>
</body>
</html>