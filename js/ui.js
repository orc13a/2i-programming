// Loading and page content
const pageLoading = document.getElementById('loadingContainer');
const pageContent = document.getElementById('pageContentContainer');

// Page title
const pageTitle = document.getElementById('pageTitle');

// Favicon
const favicon = document.getElementById('favicon');

// Repo info 
const repoInfoBtn = document.getElementById('repoInfoBtn');
const svgOpen = document.getElementById('svgOpenRepo');
const svgClose = document.getElementById('svgCloseRepo');
const popupContainer = document.getElementById('repoInfoPopupContainer');
const popup = document.getElementById('repoInfoPopup');

// Repo popup
const repoName = document.getElementById('repoNamePopup');
const repoDefaultBranch = document.getElementById('defaultBranch');

function data() {
    fetchStartup().then(results => {
        results['branches'].forEach(obj => {
            obj.display('bc');
            //obj.getDetails();
            //obj.display('bc');
        });

        pageTitle.innerHTML = results['user'].login + ' | ' + results['repo'].name;
        favicon.href = results['user'].avatar_url;

        repoName.href = results['repo'].html_url;
        repoName.innerHTML = results['repo'].name;

        repoDefaultBranch.innerHTML = results['repo'].default_branch;

        pageLoading.style.display = 'none';
        pageContent.style.display = 'block';
    });
}
data();


repoInfoBtn.addEventListener('click', () => {
    if (popupContainer.style.display == 'none') {
        svgOpen.style.display = 'none';
        svgClose.style.display = 'block';
        popupContainer.style.display = 'inline-block';
    } else {
        svgOpen.style.display = 'block';
        svgClose.style.display = 'none';
        popupContainer.style.display = 'none';
    }
});

let idMatch = ['svgOpenRepo', 'svgOpenRepoPath', 'repoInfoBtn', 'repoInfoPopup'];

window.addEventListener('click', (event) => {
    if (popupContainer.style.display != 'none') {
        if (idMatch.includes(event.target.id) === false) {
            svgOpen.style.display = 'block';
            svgClose.style.display = 'none';
            popupContainer.style.display = 'none';
        }
    }
});