// Laver request variablen som har en funktion som hedsder XMLHttpRequest som værdi
var request = new XMLHttpRequest();

// HTTP GET request
request.open('GET', 'https://api.github.com/users/orc13a/repos', true);

// Her vi vil gemme 2i-progamming repo objectet
let repo2i = [];

request.onload = function () {
    // Laver den data vi får af API'en til JSON (JavaScript Object Notation)
    var data = JSON.parse(this.response);

    setTimeout(function() {
        // Kigger på om der er fejl og API'en ikke sender OK tilbage
        if (request.status !== 200) {
            // Her bruger jeg min funktion til at lave og vise fejlen på hjemmsiden
            httpError(request.status.toString(), request.statusText);
        } else {
            // Ellers viser den indholdet på hjemmesiden
            document.getElementById('loadingContainer').style.display = 'none';
            document.getElementById('contentContainer').style.display = 'block';

            data.forEach(element => {
                // Finder 2i-programming ud fra alle mine public repos.
                if (element.id === 287233432) { // Er 2i-programming repo id
                    repo2i.push(
                        element.id, // 0
                        element.name, // 1
                        element.html_url, // 2
                        element.owner.login, // 3
                        element.owner.html_url, // 4
                        element.owner.avatar_url, // 5
                        element.language, // 6
                        element.default_branch, // 7
                        element.created_at, // 8
                        element.updated_at, // 9
                        element.pushed_at // 10
                    );
                }
            });
        
            // Sætter siden icon i browseren
            var favIcon = document.getElementById('favIcon');
            favIcon.setAttribute('href', repo2i[5]);
        
            // Giver data til html
            var gitUsernameOutput = document.getElementById('gitUserName');
            gitUsernameOutput.innerHTML = repo2i[3];
            gitUsernameOutput.setAttribute('href', repo2i[4]);
        
            // Giver data til html
            var gitRepoNameOutput = document.getElementById('gitRepoName');
            gitRepoNameOutput.innerHTML = repo2i[1];
            gitRepoNameOutput.setAttribute('href', repo2i[2]);
        
            // Giver data til html
            var defaultBranch = document.getElementById('defaultBranch');
            defaultBranch.innerHTML = '<b>Default branch:</b> ' + repo2i[7];
        
            // Til at dele den string man får som indeholder tid og dato
            // Her bruger jeg min funktion til at ændre på tiden og datoen
            var updateTimeAndDate = formatTimeAndDate(repo2i[9]);
        
            // Giver data til html
            var lastUpdated = document.getElementById('lastUpdated');
            lastUpdated.innerHTML = '<b>Opdateret:</b> <br>' + updateTimeAndDate[0] + ' | ' + updateTimeAndDate[1];
        
            // Giver data til html
            var language = document.getElementById('language');
            language.innerHTML = repo2i[6];
        
            // Til at dele den string man får som indeholder tid og dato
            // Her bruger jeg min funktion til at ændre på tiden og datoen
            var pushedTimeAndDate = formatTimeAndDate(repo2i[10]);
        
            // Giver data til html
            var pushed = document.getElementById('pushed');
            pushed.innerHTML = '<b>Pushed:</b> <br>' + pushedTimeAndDate[0] + ' | ' + pushedTimeAndDate[1];
        
            // Til at dele den string man får som indeholder tid og dato
            // Her bruger jeg min funktion til at ændre på tiden og datoen
            var createdTimeAndDate = formatTimeAndDate(repo2i[8]);
        
            // Giver data til html
            var created = document.getElementById('created');
            created.innerHTML = '<b>Lavet:</b> <br>' + createdTimeAndDate[0] + ' | ' + createdTimeAndDate[1];

        }
    }, 500);
};



// Sender den request
request.send();