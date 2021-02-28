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

    getBranch() {
        var url = `https://api.github.com/repos/orc13a/2i-programming/branches/${this.name}`;
    }
}