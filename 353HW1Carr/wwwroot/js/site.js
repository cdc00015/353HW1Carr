// Please see documentation at https://learn.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.
/*
This is for show the visability of JLove stats
<script>
    function toggleTableVisibility() {
  var table = document.getElementById('jlStats');
    if (table.style.display === 'none') {
        table.style.display = 'block';
  } else {
        table.style.display = 'none';
  }
}

</script>
*/

async function displayPlayerDetails(playerid) {
    const response = await fetch(`https://localhost:7095/api/Players/Basic/${playerid}`)
    const data = await response.json();

    document.getElementById('playerName').innerHTML = data[0].firstName + " " + data[0].lastName;
    document.getElementById('playerName').style.visibility = 'visible';

    document.getElementById('college').innerHTML = data[0].college;
    document.getElementById('college').style.visibility = 'visible';

    document.getElementById('height').innerHTML = data[0].height;
    document.getElementById('height').style.visibility = 'visible'

    document.getElementById('weight').innerHTML = data[0].weight;
    document.getElementById('weight').style.visibility = 'visible'

    document.getElementById('yards').innerHTML = data[0].yards;
    document.getElementById('yards').style.visibility = 'visible'

    document.getElementById('tDs').innerHTML = data[0].tDs;
    document.getElementById('tDs').style.visibility = 'visible'

    document.getElementById('inTs').innerHTML = data[0].inTs;
    document.getElementById('inTs').style.visibility = 'visible'

    document.getElementById('completions').innerHTML = data[0].completions;
    document.getElementById('completions').style.visibility = 'visible'

}

async function displayAdvancePlayerDetails(playerid) {
    const response = await fetch(`https://localhost:7095/api/Players/Advanced/${playerid}`)
    const data = await response.json();

    document.getElementById('yardsPerAttempt').innerHTML = data[0].yardsPerAttempt;
    document.getElementById('yardsPerAttempt').style.visibility = 'visible'

    document.getElementById('completionPercentage').innerHTML = data[0].completionPercentage;
    document.getElementById('completionPercentage').style.visibility = 'visible'

    document.getElementById('tdintRatio').innerHTML = data[0].tdintRatio;
    document.getElementById('tdintRatio').style.visibility = 'visible'
}

async function displayTeamDetails(teamid) {
    const response = await fetch(`https://localhost:7095/api/Teams/Basic/${teamid}`)
    const data = await response.json();

    document.getElementById('teamName').innerHTML = data[0].teamName;
    document.getElementById('teamName').style.visibility = 'visible';

    document.getElementById('city').innerHTML = data[0].city;
    document.getElementById('city').style.visibility = 'visible';

    document.getElementById('location').innerHTML = data[0].location;
    document.getElementById('location').style.visibility = 'visible'

    document.getElementById('division').innerHTML = data[0].division;
    document.getElementById('division').style.visibility = 'visible'

    document.getElementById('points').innerHTML = data[0].points;
    document.getElementById('points').style.visibility = 'visible'

    document.getElementById('yards').innerHTML = data[0].yards;
    document.getElementById('yards').style.visibility = 'visible'
}

async function displayAdvancedTeamDetails(teamid) {
    const response = await fetch(`https://localhost:7095/api/Teams/Advanced/${teamid}`)
    const data = await response.json();

    document.getElementById('pointsPerGame').innerHTML = data[0].pointsPerGame;
    document.getElementById('pointsPerGame').style.visibility = 'visible'

    document.getElementById('yardsPerGame').innerHTML = data[0].yardsPerGame;
    document.getElementById('yardsPerGame').style.visibility = 'visible'
}


async function fetchUserFavorites() {
    const userid = document.getElementById('userDropdown').value;
    if (!userid) {
        alert('Please select a user.');
        return;
    }

    const playerResponse = await fetch(`https://localhost:7095/api/Favorites/player/${userid}`);
    const playerData = await playerResponse.json();

    const teamResponse = await fetch(`https://localhost:7095/api/Favorites/team/${userid}`);
    const teamData = await teamResponse.json();

    //fills tables with response from api
    populatePlayerTable(playerData);
    populateTeamTable(teamData);

    // shows tables after getting data
    document.getElementById('playerDetails').style.display = 'block';
    document.getElementById('teamDetails').style.display = 'block';
}

async function populatePlayerTable(playerData) {
    const playerTableBody = document.getElementById('playerTableBody');
    playerTableBody.innerHTML = '';

    playerData.forEach(player => {
        const row = document.createElement('tr');
        row.innerHTML = `
                <td>${player.firstName}</td>
                <td>${player.lastName}</td>
                <td>${player.jerseyNum}</td>
                <td>${player.college}</td>
            `;
        //will auto increment table rows to fit response from api
        playerTableBody.appendChild(row);
    });
}

async function populateTeamTable(teamData) {
    const teamTableBody = document.getElementById('teamTableBody');
    teamTableBody.innerHTML = '';

    teamData.forEach(team => {
        const row = document.createElement('tr');
        row.innerHTML =`
                <td>${team.teamName}</td>
                <td>${team.city}</td>
                <td>${team.location}</td>
                <td>${team.division}</td>
        `;
        //will auto increment table rows to fit response from api
        teamTableBody.appendChild(row);
    });
}