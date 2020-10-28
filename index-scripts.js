// HTTP error funktion
function httpError(status, statusText) {
    // Skjuler de <div> med alt indholdet og loading iconet
    document.getElementById('contentContainer').style.display = 'none';
    document.getElementById('loadingContainer').style.display = 'none';
    
    var httpError = document.getElementById('httpError');
    // Giver den fejl <div> noget tekst
    httpError.innerHTML = '<b>' + status + '</b> ' + statusText + '<br><br> Prøv igen senere, <a href="https://github.com/orc13a/2i-programming">Klik her</a> for min repo med opgaverne.';
    // Her viser vi den <div> med felj indhold i istedet
    httpError.style.display = 'block';
}


// Til at formatere dato og tid data fra API om repo
function formatTimeAndDate(str) {
    // API'en giver os f.eks (20-10-25T14:45:14Z)
    // Her deler vi den sting mellem "T", den laver så en array:
    // ["20-10-25", "14:45:14Z"]
    var strSplitDate = str.split('T');
    // Tager vi anden plads i den array og deler ved "Z":
    // ["14:45:14", ""]
    var strSplitTime = strSplitDate[1].split('Z');
    
    // ["20", "10", "25"]
    var strSplitDate2 = strSplitDate[0].split('-');
    // ["14", "45", "14"]
    var strSplitTime2 = strSplitTime[0].split(':');

    // Her bruger jeg noget som er en del a Javascript
    // Giver noget data om tid og data
    var newDate = new Date();
    // Så kan vi finde hvilken tid er vi er
    // Sommer tid er vi UTC+2 og vinter tid er UTC+1
    var timeOffset = newDate.getTimezoneOffset();
    // timeOffset giver os i vintertid (-60), sommertid (-120)
    // Så kan vi dividere med -60 
    // for at finde ud af om vi er i sommertid eller vintertid
    var utcOffcet = timeOffset / (-60);

    // Så går vi string til int og så pluser vi med 1 eller 2 til tiden
    var strSplitTime2UTC = parseInt(strSplitTime2[0]) + utcOffcet;
    // Så går vi det til en string igen
    var strSplitTime2UTCString = strSplitTime2UTC.toString();

    // Skriver vi datoen på den måde vi skriver det her i Danmark
    var date = strSplitDate2[2] + '/' + strSplitDate2[1] + '-' + strSplitDate2[0]; 
    // Og sætter tiden tilbage til en string
    var time = strSplitTime2UTCString + ':' + strSplitTime2[1] + ':' + strSplitTime2[2];

    // Så returner vi de 2 færdige strings i en array
    var result = [date, time];

    return result;
}