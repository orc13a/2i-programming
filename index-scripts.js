// HTTP error funktion
function httpError(status, statusText) {
    document.getElementById('contentContainer').style.display = 'none';
    var httpError = document.getElementById('httpError');
    httpError.innerHTML = '<b>' + status + '</b> ' + statusText + '<br><br> Prøv igen senere, <a href="https://github.com/orc13a/2i-programming">Klik her</a> for min repo med opgaverne.';
    httpError.style.display = 'block';
}