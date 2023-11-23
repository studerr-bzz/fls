<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Simulation</title>
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
                        <a class="nav-link active" aria-current="page" href="simulate.jsp">Simulate</a>
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
    <div class="row mb-5">
        <div class="col-12">
            <h1 class="firstTeamsTitle">Simulate</h1>
        </div>
    </div>
    <div class="row mt-4">
        <div class="col-2"></div>
        <div class="col-4 indexpage">
            <h3 class="mb-4">Games</h3>
            <div class="card mx-auto" style="width: 18rem;">
                <div class="card-body">
                    <h6 class="card-subtitle mb-2 text-body-secondary break-block">DD.MM.YYYY</h6>
                    <h6 class="card-subtitle mb-2 text-body-secondary break-block">Week 1</h6>
                    <br><br>
                    <p class="card-text">Fc Barcelona - Real Madrid</p>
                    <p class="card-text">Atletico Madrid - Fc Barcelona</p>
                    <p class="card-text">Real Madrid - Atletico Madrid</p>

                    <button type="button" class="btn btn-danger mt-4 shadow" id="showCard">Simulate</button>
                </div>
            </div>
        </div>
        <div class="col-4 indexpage" style="display: none;" id="newCard">
            <h3 class="mb-4">Results</h3>
            <div class="card mx-auto" style="width: 18rem;">
                <div class="card-body">
                    <h6 class="card-subtitle mb-2 text-body-secondary break-block">DD.MM.YYYY</h6>
                    <h6 class="card-subtitle mb-2 text-body-secondary break-block">Week 1</h6>
                    <br><br>
                    <p class="card-text">Fc Barcelona 6 - 0 Real Madrid</p>
                    <p class="card-text">Atletico Madrid 1 - 5 Fc Barcelona</p>
                    <p class="card-text">Real Madrid 1 - 3 Atletico Madrid</p>

                    <a class="btn btn-danger mt-4 shadow" href="leagueOverview.jsp" role="button">Back to standings</a>
                </div>
            </div>
        </div>
        <div class="col-2"></div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="js/script.js"></script>

</body>
</html>