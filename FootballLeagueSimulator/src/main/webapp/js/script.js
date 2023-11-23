// Shows new card on the simulate.jsp page
var button = document.getElementById('showCard');
var newCard = document.getElementById('newCard');
button.addEventListener('click', function() {
    newCard.style.display = 'block';
});

// Update hidden input field when new teamId is selected
document.getElementById('selectTeam').addEventListener('change', function () {
var selectedTeamId = this.value;
document.getElementById('teamId').value = selectedTeamId;
});

function createPlayer() {
    // Gather form data
    var formData = new FormData(document.getElementById('createPlayerForm'));

    // Perform AJAX request
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'webapi/playerResource/create', true);
    xhr.onload = function () {
        if (xhr.status === 200) {
            // Handle success (optional)
            console.log('Player created successfully');
            // You can update the table dynamically here
            // For simplicity, you can reload the page after success
            window.location.href = 'homePage.jsp';
        } else {
            // Handle errors (optional)
            console.error('Error creating player');
        }
    };
    xhr.send(formData);
}
function deleteTeam(teamId) {
    // deletePlayer(teamId);
    return fetch('http://localhost:8080/FootballLeagueSimulator_war_exploded/webapi/teamResource/delete/' + teamId, {
        method: 'DELETE',
    })
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            console.log('Resource successfully deleted');
            window.location.reload();
            return true;
        })
        .catch(error => {
            console.error('Error while deleting the resource:', error);
            return false;
        });
}

function deletePlayer(playerId) {
    // deleteAllMatchesAndFiltersByLottery(lotteryId);
    return fetch('http://localhost:8080/FootballLeagueSimulator_war_exploded/webapi/playerResource/delete/' + playerId, {
        method: 'DELETE',
    })
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            console.log('Resource successfully deleted');
            window.location.reload();
            return true;
        })
        .catch(error => {
            console.error('Error while deleting the resource:', error);
            return false;
        });
}