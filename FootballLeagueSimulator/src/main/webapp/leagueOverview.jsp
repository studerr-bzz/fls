<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>FLS</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

</head>
<body>

<header>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <a class="navbar-brand" href="homePage.jsp">FLS</a>
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="leagueOverview.jsp">League Overview</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="statistics.jsp">Statistics</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="simulate.jsp">Simulate</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Add
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="addPlayer.jsp">Player</a></li>
                            <li><a class="dropdown-item" href="addTeam.jsp">Team</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<div class="container">
    <div class="row pb-5">
        <div class="col-12">
            <h1 class="firstTeamsTitle">League Overview</h1>
        </div>
    </div>
    <div class="row pt-4">
        <div class="col-1"></div>
        <div class="col-5 align-center">
            <h3 class="pb-4">Standings</h3>
            <table class="table">
                <thead>
                <tr>
                    <th class="align-center" scope="col">#</th>
                    <th scope="col"></th>
                    <th scope="col">Teams</th>
                    <th class="align-center" scope="col">PTS</th>
                    <th class="align-center" scope="col"></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th class="align-center" scope="row">1</th>
                    <th scope="row"></th>
                    <td><a class="standings" href="teamPage.jsp">Fc Barcelona</a></td>
                    <td class="align-center">54</td>
                    <td class="align-center">X</td>
                </tr>
                <tr>
                    <th class="align-center" scope="row">2</th>
                    <th scope="row"></th>
                    <td><a class="standings" href="teamPage.jsp">Real Madrid</a></td>
                    <td class="align-center">20</td>
                    <td class="align-center">X</td>
                </tr>
                <tr>
                    <th class="align-center" scope="row">3</th>
                    <th scope="row"></th>
                    <td><a class="standings" href="teamPage.jsp">Atletico Madrid</a></td>
                    <td class="align-center">15</td>
                    <td class="align-center">X</td>
                </tr>
                </tbody>
            </table>
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                Add new Team to the league
            </button>

            <!-- Modal -->
            <form role="form" action="webapi/teamResource/createPLO" method="post">
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="staticBackdropLabel">Create new Team</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="form-floating pb-4">
                                    <input type="text" id="teamName" class="form-control" name="teamName" placeholder="Name" required>
                                    <label for="teamName">Name</label>
                                </div>

                                <div class="form-floating pb-4">
                                    <input type="text" id="coachName" class="form-control" name="coachName" placeholder="Coach name" required>
                                    <label for="coachName">Coach name</label>
                                </div>

                                <div class="form-floating pb-4">
                                    <input type="text" id="teamRating" class="form-control" name="teamRating" placeholder="Rating" required>
                                    <label for="teamRating">Rating</label>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input type="reset" class="btn btn-danger shadow" value="Reset">
                                <button type="submit" class="btn btn-success shadow">Add player to team</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-1"></div>
        <div class="col-4 indexpage">
            <h3 class="pb-4">Games</h3>
            <div class="card mx-auto" style="width: 20rem;">
                <div class="overflow-auto" style="max-height: 230px;">
                    <div class="card mx-auto mt-4 mb-4" style="width: 18rem;">
                        <div class="card-body">
                            <h6 class="card-subtitle mb-2 text-body-secondary break-block">DD.MM.YYYY</h6>
                            <h6 class="card-subtitle mb-2 text-body-secondary break-block">Week 1</h6>
                            <br><br>
                            <p class="card-text">Fc Barcelona - Real Madrid</p>
                            <p class="card-text">Atletico Madrid - Fc Barcelona</p>
                            <p class="card-text">Real Madrid - Atletico Madrid</p>
                        </div>
                    </div>
                    <div class="card mx-auto mb-4" style="width: 18rem;">
                        <div class="card-body">
                            <h6 class="card-subtitle mb-2 text-body-secondary break-block">DD.MM.YYYY</h6>
                            <h6 class="card-subtitle mb-2 text-body-secondary break-block">Week 2</h6>
                            <br><br>
                            <p class="card-text">Fc Barcelona - Real Madrid</p>
                            <p class="card-text">Atletico Madrid - Fc Barcelona</p>
                            <p class="card-text">Real Madrid - Atletico Madrid</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-1"></div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>