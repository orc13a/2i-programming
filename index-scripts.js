// HTTP error funktion
function httpError(status, statusText) {
    document.getElementById('contentContainer').style.display = 'none';
    document.getElementById('loadingContainer').style.display = 'none';
    var httpError = document.getElementById('httpError');
    httpError.innerHTML = '<b>' + status + '</b> ' + statusText + '<br><br> Prøv igen senere, <a href="https://github.com/orc13a/2i-programming">Klik her</a> for min repo med opgaverne.';
    httpError.style.display = 'block';
}

// Til at formatere dato og tid data fra API om repo
function formatTimeAndDate(str) {
    var strSplitDate = str.split('T');
    var strSplitTime = strSplitDate[1].split('Z');
    
    var strSplitDate2 = strSplitDate[0].split('-');
    var strSplitTime2 = strSplitTime[0].split(':');

    var strSplitTime2UTC = parseInt(strSplitTime2[0]) + 2;
    var strSplitTime2UTCString = strSplitTime2UTC.toString();

    var date = strSplitDate2[2] + '/' + strSplitDate2[1] + '-' + strSplitDate2[0]; 
    var time = strSplitTime2UTCString + ':' + strSplitTime2[1] + ':' + strSplitTime2[2];

    var result = [date, time];

    return result;
}