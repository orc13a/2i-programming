function fetchStartup() {
    var allData = [];

    const userReq = new Request('https://api.github.com/users/orc13a');
    const branchesReq = new Request('https://api.github.com/repos/orc13a/2i-programming/branches');

    fetch(userReq)
    .then(res => {
        if (res.status === 200) {
            return res.json();
        } else {
            throw new Error(`${res.status} - ${res.statusText}`);
        }
    }).then(data => {
        allData.push(data);
    }).catch(err => {
        console.error(err);
    });
    
    fetch(branchesReq)
    .then(res => {
        if (res.status === 200) {
            return res.json();
        } else {
            throw new Error(`${res.status} - ${res.statusText}`);
        }
    }).then(data => {
        allData.push(data);
    }).catch(err => {
        console.error(err);
    });
    
    /*return new Promise(resolve => {
        resolve(allData);
    });*/

    return allData;
}