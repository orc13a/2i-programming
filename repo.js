// Laver request variablen som har en funktion som hedsder XMLHttpRequest som værdi
var request = new XMLHttpRequest();

// HTTP GET request
request.open('GET', 'https://api.github.com/users/orc13a/repos', true);

// Her vi vil gemme 2i-progamming repo objectet
let repo2i = [];

request.onload = function () {
    var data = JSON.parse(this.response);

    data.forEach(element => {
        // Finder 2i-programming ud fra alle mine public repos.
        if (element.id == 287233432) { // Er 2i-programming repo id
            repo2i.push(
                element.id,
                element.name,
                element.html_url,
                element.owner.login,
                element.owner.html_url,
                element.owner.avatar_url,
                element.language,
                element.default_branch,
                element.created_at,
                element.updated_at,
                element.pushed_at
            );
        }
    });

    console.log(data);

    // Giver data til html
    var gitUsernameOutput = document.getElementById('gitUserName');
    gitUsernameOutput.innerHTML = repo2i[3];
    gitUsernameOutput.setAttribute('href', repo2i[4]);

    var gitRepoNameOutput = document.getElementById('gitRepoName');
    gitRepoNameOutput.innerHTML = repo2i[1];
    gitRepoNameOutput.setAttribute('href', repo2i[2]);
};



// Sender den request
request.send();