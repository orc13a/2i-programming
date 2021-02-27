function fetchStartup() {
    let fetchedData = {
        user: {}
    }
    let branches = [];

    const userReq = new Request('https://api.github.com/users/orc13a');
    const allBranchesReq = new Request('https://api.github.com/repos/orc13a/2i-programming/branches');
    
    // Get user data
    fetch(userReq)
    .then(res => {
        if (res.status === 200) {
            return res.json();
        } else {
            throw new Error(`${res.status} - ${res.statusText}`);
        }
    }).then(data => {
        fetchedData.user = data;
    }).catch(err => {
        console.error(err);
    });
    
    // Get all branch names
    fetch(allBranchesReq)
    .then(res => {
        if (res.status === 200) {
            return res.json();
        } else {
            throw new Error(`${res.status} - ${res.statusText}`);
        }
    }).then(data => {
        data.forEach(obj => {
            branches.push(new Branch(obj.name));
        });
    }).catch(err => {
        console.error(err);
    });
    
    /*return new Promise(resolve => {
        resolve(allData);
    });*/

    fetchedData.branches = branches;
    return fetchedData;
}