<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Team name</title>
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
                        <a class="nav-link" aria-current="page" href="leagueOverview.jsp">League Overview</a>
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
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="teamPage.jsp">Team name</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<div class="container">
    <div class="row">
        <div class="col-12">
            <h1 class="firstTeamsTitle">Fc Barcelona</h1> <!-- Team name of where the onclick on the page "League Overview" was -->
        </div>
    </div>
    <br><br><br>
    <div class="row indexpage">
        <div class="col-1"></div>
        <div class="col-3">
            <h3>Players</h3>
            <br>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Players</th>
                    <th scope="col">Rating</th>
                    <th scope="col">Goals</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>Messi</td>
                    <td>99</td>
                    <td>31</td>
                </tr>
                </tbody>
            </table>
            <button type="button" class="btn btn-danger shadow" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                Add new player to the team
            </button>

            <!-- Modal -->
            <form action="/player" method="post">
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="staticBackdropLabel">Create new player</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="form-floating">
                                    <input type="text" id="playerName" class="form-control" name="playerName" placeholder="Name" required>
                                    <label for="playerName">Name</label>
                                </div><br>

                                <div class="form-floating">
                                    <input type="text" id="position" class="form-control" name="position" placeholder="Position" required>
                                    <label for="position">Position</label>
                                </div><br>

                                <div class="form-floating">
                                    <input type="text" id="playerRating" class="form-control" name="playerRating" placeholder="Rating" required>
                                    <label for="playerRating">Rating</label>
                                </div><br>

                                <!-- Current team must be pre selected and the dropdown disabled. It depends on witch team got selected on the "League Overview" page -->
                                <div class="form-floating">
                                    <select class="form-select form-select-sm select-dropdown form-control" aria-label=".form-select-sm example" id="selectTeam" placeholder="Select team" name="selectTeam" disabled>
                                        <option value>Select a Team</option>
                                        <option selected="1">Fc Barcelona</option>
                                        <option value="2">Real Madrid</option>
                                        <option value="3">Atletico Madrid</option>
                                    </select>
                                    <label for="selectTeam">Team</label>
                                </div><br>
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
        <div class="col-4">
            <h3>Coach</h3>
            <br>
            <h6>[Coach name]</h6> <!-- Coach name of selected Team must be shown -->
        </div>
        <div class="col-3">
            <h3>Team statistics</h3>
            <br>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Goals</th>
                    <th scope="col">Goal difference</th>
                    <th scope="col">Points</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>54</td>
                    <td>49</td>
                    <td>47</td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="col-1"></div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>