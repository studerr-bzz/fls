<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Add Teams</title>
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
            <h1 class="firstTeamsTitle">Add Team</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <form action="/team" method="post">
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

                <input type="reset" class="btn btn-danger mt-4 shadow" value="Reset">
                <input type="submit" class="btn btn-success mt-4 shadow" value="Create team">
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>