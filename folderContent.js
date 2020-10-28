// Når man klikker på en af mapperne
// Parameter navnet på mappen, mappens API url og urls 
function folderContent(name, url, htmlUrl) {
    window.scrollTo(0, 0);
    // Skriver navnet på mappen over viser den i tabellen
    document.getElementById('choosenFolder').innerHTML = '↳ / <a href="'+htmlUrl+'">' + name + '</a>';
    document.getElementById('folderTr').style.display = '';

    // Skjuler alle mapper og viser indhold af den valgte
    document.getElementById('treesContainer').style.display = 'none';
    document.getElementById('folderContentContainer').style.display = 'block';

    // Laver request variablen som har en funktion som hedsder XMLHttpRequest som værdi
    var request = new XMLHttpRequest();

    // Laver en HTTP GET request til hjemmesiden / API'en
    request.open('GET', url, true);

    // Når min github page ses gør den funktionen med det samme.
    // Disse data er til at få alle mapperne i repo 2i-programering 
    request.onload = function () {
        // Tager resopnse og laver den til JSON (JavaScript Object Notation)
        var data = JSON.parse(this.response);
        
        // Viser vi loading <div>, mens vi venter på svar fra API'en
        document.getElementById('loadingContainer').style.display = 'block';

        // Laver en timeout på 500 millisekunder før funktioen bliver kørt
        setTimeout(function() {
            // Hvis API'en svarer andet en 200 som er OK
            if (request.status !== 200) {
                // Så skal den tage os til start siden og vise fejl
                window.location.href = "https://orc13a.github.io/2i-programming/";
            } else {
                // Ellers viser den indholdet af siden
                document.getElementById('loadingContainer').style.display = 'none';
                document.getElementById('contentContainer').style.display = 'block';

                // For hvert element i objektet vi får af API'en
                data.forEach(element => {
                    document.getElementById('folderContentContainer').innerHTML += '<div class="folderFile shadow"><table><tbody><tr><td class="folderFileName"><a href="'+ element.html_url +'">'+ element.name +'</a></td><td class="folderFileDownload"><a href="'+ element.download_url +'">Download</a></td></tr></tbody</table></div>';
                    //document.getElementById('test').setAttribute('src', element.download_url);
                });
            }
        }, 500);
    }

    // Sender den request
    request.send();
}

// Når man går tilbage til alle mapper
function folderClose() {
    window.scrollTo(0, 0);
    // Skjuler navnet på mappen over viser den i tabellen
    document.getElementById('choosenFolder').innerHTML = '';
    document.getElementById('folderTr').style.display = 'none';

    // Viser alle mapper og skjuler indhold af den valgte
    document.getElementById('treesContainer').style.display = 'block';
    document.getElementById('folderContentContainer').style.display = 'none';

    // Sletter folder content container innerHTML til ingen ting
    document.getElementById('folderContentContainer').innerHTML = '';
}