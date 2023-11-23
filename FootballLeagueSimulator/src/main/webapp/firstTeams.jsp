<%@ page import="com.example.footballleaguesimulator.model.Team" %>
<%@ page import="com.example.footballleaguesimulator.database.TeamDAO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="teamBean" scope="page" class="com.example.footballleaguesimulator.database.TeamDAO"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Create Teams</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

</head>
<body>
<%
    TeamDAO tDAO = new TeamDAO();
    List<Team> teams = tDAO.readAllTeams();
%>

<div class="container">
    <div class="row pt-4 pb-5">
        <div class="col-12">
            <h1 class="firstTeamsTitle">Create first teams</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-2"></div>
        <div class="col-3 align-center">
            <h3 class="pb-4">Create new team</h3>
            <form action="webapi/teamResource/create" method="post">
                <div class="form-floating pb-5">
                    <input type="text" id="teamName" class="form-control" name="teamName" placeholder="Name" required>
                    <label for="teamName">Name</label>
                </div>

                <div class="form-floating pb-5">
                    <input type="text" id="coachName" class="form-control" name="coachName" placeholder="Coach name" required>
                    <label for="coachName">Coach name</label>
                </div>

                <div class="form-floating pb-5">
                    <input type="text" id="teamRating" class="form-control" name="teamRating" placeholder="Rating" required>
                    <label for="teamRating">Rating</label>
                </div>

                <input type="reset" class="btn btn-danger shadow mt-4" value="Reset">
                <input type="submit" class="btn btn-success shadow mt-4" value="Create team">
            </form>
        </div>
        <div class="col-2"></div>
        <div class="col-3 align-center position-relative">
            <h3 class="pb-4">Teams created</h3>
            <div class="overflow-auto" style="max-height: 290px">
                <table class="table">
                    <tbody>
                    <c:forEach var="team" items="<%=teams%>">
                        <tr>
                            <td class="data lead text-start"><c:out value="${team.teamName}"/></td>
                            <td class="text-end"><a onclick="deleteTeam('${team.teamId}')"><button type="button" class="btn btn-danger shadow"><img src='img/trash.svg' alt='trash'></button></a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <a class="btn btn-secondary btn-bottom shadow" href="firstPlayers.jsp" role="button">Add players to these teams</a>
        </div>
        <div class="col-2"></div>
    </div>
</div>

<script src="js/script.js"></script>

</body>
</html>