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

async function displayPlayerDetails(PlayerID) {
    const response = await fetch('https://localhost:7095/api/Players/Basic/${PlayerID}')
    const data = await response.json();

    //Changing the HTML and making it visable
    document.getElementById('playerName').innerHTML = data[0].firstName;
    document.getElementById('playerName').style.visibility = 'visible';
}