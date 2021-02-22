let allBranchCards = [];

class BranchCard {
    constructor(branchObj) {
        this.branch = branchObj;
    }

    display(displayContainer) {
        var container = document.getElementById(displayContainer);

        var html = `
        <div id="${this.branch.sha}" class="branchCardContainer">
            
        </div>
        `;

        container.innerHTML += html;
    }
}