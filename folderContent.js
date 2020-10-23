// Når man klikker på en af mapperne
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
        
        data.forEach(element => {
            document.getElementById('folderContentContainer').innerHTML += '<div class="folderFile"><div class="folderFileName"><a href="'+ element.html_url +'">'+ element.name +'</a></div><div class="folderFileDownload"><a href="https://orc13a.github.io/2i-programming/repo.js" download>Download</a></div></div>' 
        });
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
}