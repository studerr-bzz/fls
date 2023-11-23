<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Add Players</title>
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
                        <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
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

<div class="container indexpage">
    <div class="row mb-5">
        <div class="col-12">
            <h1 class="firstTeamsTitle">Add Player</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <form action="webapi/player/createPAP" method="post">
                <div class="form-floating pb-5">
                    <input type="text" id="playerName" class="form-control" name="playerName" placeholder="Name" required>
                    <label for="playerName">Name</label>
                </div>

                <div class="form-floating pb-5">
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

                <div class="form-floating pb-5">
                    <input type="text" id="playerRating" class="form-control" name="playerRating" placeholder="Rating" required>
                    <label for="playerRating">Rating</label>
                </div>

                <div class="form-floating pb-5">
                    <select class="form-select form-select-sm select-dropdown form-control" aria-label=".form-select-sm example" id="selectTeam" placeholder="Select team" name="selectTeam" required>
                        <option value="">Select a Team</option>
                        <option value="1">Fc Barcelona</option>
                        <option value="2">Real Madrid</option>
                        <option value="3">Atletico Madrid</option>
                    </select>
                    <label for="selectTeam">Team</label>
                </div>

                <input type="reset" class="btn btn-danger mt-4 shadow" value="Reset">
                <input type="submit" class="btn btn-success mt-4 shadow" value="Create team">
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>