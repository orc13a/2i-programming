// Laver request variablen som har en funktion som hedsder XMLHttpRequest som værdi
var request = new XMLHttpRequest();

// HTTP GET request
request.open('GET', 'https://api.github.com/users/orc13a/repos', true);

// Her vi vil gemme 2i-progamming repo objectet
let repo2i = [];

request.onload = function () {
    var data = JSON.parse(this.response);

    if (request.status === 403) {
        document.getElementById('contentContainer').style.display = 'none';
        var httpError = document.getElementById('httpError');
        httpError.innerHTML = request.status + data.message;
        httpError.style.display = 'block';
    } else {

        data.forEach(element => {
            // Finder 2i-programming ud fra alle mine public repos.
            if (element.id == 287233432) { // Er 2i-programming repo id
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
    
        var favIcon = document.getElementById('favIcon');
        favIcon.setAttribute('href', repo2i[5]);
    
        // Giver data til html
        var gitUsernameOutput = document.getElementById('gitUserName');
        gitUsernameOutput.innerHTML = repo2i[3];
        gitUsernameOutput.setAttribute('href', repo2i[4]);
    
        var gitRepoNameOutput = document.getElementById('gitRepoName');
        gitRepoNameOutput.innerHTML = repo2i[1];
        gitRepoNameOutput.setAttribute('href', repo2i[2]);
    
        var defaultBranch = document.getElementById('defaultBranch');
        defaultBranch.innerHTML = '<b>Default branch:</b> ' + repo2i[7];
    
        // Til at dele den string man får som indeholder tid og dato
        var updatedLastString = repo2i[9];
        var updatedLastDate = updatedLastString.split('T');
        var updatedLastTime = updatedLastDate[1].split('Z');
    
        var lastUpdated = document.getElementById('lastUpdated');
        lastUpdated.innerHTML = '<b>Opdateret:</b> <br>' + updatedLastDate[0] + ', ' + updatedLastTime[0];
    
        var language = document.getElementById('language');
        language.innerHTML = repo2i[6];
    
        var pushedString = repo2i[10];
        var pushedDate = pushedString.split('T');
        var pushedTime = pushedDate[1].split('Z');
    
        var pushed = document.getElementById('pushed');
        pushed.innerHTML = '<b>Pushed:</b> <br>' + pushedDate[0] + ', ' + pushedTime[0];
    
        var createdString = repo2i[8];
        var createdDate = createdString.split('T');
        var createdTime = createdDate[1].split('Z');
    
        var created = document.getElementById('created');
        created.innerHTML = '<b>Lavet:</b> <br>' + createdDate[0] + ', ' + createdTime[0];

    }
};



// Sender den request
request.send();