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

    document.getElementById('playerName').innerHTML = data[0].firstName;
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

async function fetchUserDetails(userid) {
    const input = document.getElementById('userDropdown').value;

    if (!input) {
        alert('Please select a user.');
        return;
    }

    try {
    const playerResponse = await fetch(`https://localhost:7095/api/Favorites/player/${userid}`);
    const playerData = await playerResponse.json();

        document.getElementById('firstName').innerHTML = playerData[0].firstName + " " + playerData[0].lastName;
    document.getElementById('firstName').style.visibility = 'visible';

    document.getElementById('lastName').innerHTML = playerData[0].lastName;
    document.getElementById('lastName').style.visibility = 'visible';

    document.getElementById('jerseyNum').innerHTML = playerData[0].jerseyNum;
    document.getElementById('jerseyNum').style.visibility = 'visible';

    document.getElementById('college').innerHTML = playerData[0].college;
    document.getElementById('college').style.visibility = 'visible';


        //// Populate player table
        //const playerTableBody = document.getElementById('playerTableBody');
        //playerTableBody.innerHTML = '';
        //playerData.forEach(player => {
        //    const row = document.createElement('tr');
        //    row.innerHTML = `
        //        <td>${player.firstName}</td>
        //        <td>${player.lastName}</td>
        //        <td>${player.jerseyNum}</td>
        //        <td>${player.college}</td>
        //    `;
        //    playerTableBody.appendChild(row);
        //});

    const teamResponse = await fetch(`https://localhost:7095/api/Favorites/team/${userid}`);
    const teamData = await teamResponse.json();

    document.getElementById('teamName').innerHTML = teamData[0].teamName;
    document.getElementById('teamName').style.visibility = 'visible';

    document.getElementById('city').innerHTML = teamData[0].city;
    document.getElementById('city').style.visibility = 'visible';

    document.getElementById('location').innerHTML = teamData[0].location;
    document.getElementById('location').style.visibility = 'visible';

    document.getElementById('division').innerHTML = teamData[0].division;
    document.getElementById('division').style.visibility = 'visible';


        //// Populate team table
        //const teamTableBody = document.getElementById('teamTableBody');
        //teamTableBody.innerHTML = '';
        //teamData.forEach(team => {
        //    const row = document.createElement('tr');
        //    row.innerHTML = `
        //        <td>${team.teamName}</td>
        //        <td>${team.city}</td>
        //        <td>${team.location}</td>
        //        <td>${team.division}</td>
        //    `;
        //    teamTableBody.appendChild(row);
        //});
    } catch (error) {
        console.error('Error fetching data:', error);
        alert('An error occurred while fetching data.');
    }
}