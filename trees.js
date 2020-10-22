// Laver request variablen som har en funktion som hedsder XMLHttpRequest som værdi
var request = new XMLHttpRequest();


// Laver en HTTP GET request til hjemmesiden / API'en
request.open('GET', 'https://api.github.com/repos/orc13a/2i-programming/contents/', true);

// div fra index.html hvor vi vil vise data'en
var treesContainerOutput = document.getElementById('treesContainer');

// Når min github page ses gør den funktionen med det samme.
// Disse data er til at få alle mapperne i repo 2i-programering 
request.onload = function () {
    // Tager resopnse og laver den til JSON (JavaScript Object Notation)
    var data = JSON.parse(this.response);
    
    // Data er en array, så siger vi for hvert element i arrayen. f.eks data[1] osv...
    data.forEach(element => {
        // Hvis det element vi er nået til har et object med navnet type og væriden dir (directory)
        if (element.type === 'dir') {
            treesContainerOutput.innerHTML += '<div class="tree">';
            treesContainerOutput.innerHTML += '<a href="' + element.html_url + '">' + element.name + '</a>';
            treesContainerOutput.innerHTML += '</div>';
        }
    });
}

// Sender den request
request.send();