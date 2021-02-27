class Branch {
    constructor(branchName) {
        this.name = branchName;
    }

    display(container) {
        console.log(this.name);
        var htmlOutput = `
            <div class="branchContainer">
                ${this.name}
            </div>
        `;
        
        document.getElementById(container).innerHTML += htmlOutput;
    }
}