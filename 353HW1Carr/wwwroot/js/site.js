﻿// Please see documentation at https://learn.microsoft.com/aspnet/core/client-side/bundling-and-minification
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