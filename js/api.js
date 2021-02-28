// async function fetchStartup() {
//     let fetchedData = {
//         user: {},
//         branches: []
//     }

//     const userReq = new Request('https://api.github.com/users/orc13a');
//     const allBranchesReq = new Request('https://api.github.com/repos/orc13a/2i-programming/branches');
    
//     // Get user data
//     fetch(userReq)
//     .then(res => {
//         if (res.status === 200) {
//             return res.json();
//         } else {
//             throw new Error(`${res.status} - ${res.statusText}`);
//         }
//     }).then(data => {
//         fetchedData.user = data;
//         return fetchedData.user;
//     }).catch(err => {
//         console.error(err);
//     });
    
//     // Get all branch names
//     fetch(allBranchesReq)
//     .then(res => {
//         if (res.status === 200) {
//             return res.json();
//         } else {
//             throw new Error(`${res.status} - ${res.statusText}`);
//         }
//     }).then(data => {
//         data.forEach(async obj => {
//             fetchedData['branches'].push(new Branch(obj.name));
//         });
//         return fetchedData['branches'];
//     }).catch(err => {
//         console.error(err);
//     });

//     //fetchedData.branches = branches;

//     // return new Promise(resolve => {
//     //     resolve(fetchedData);
//     // });
//     return fetchedData;    
// }

async function fetchStartup() {
    const userReq = await fetch('https://api.github.com/users/orc13a');
    const branchesReq = await fetch('https://api.github.com/repos/orc13a/2i-programming/branches');

    const userJson = await userReq.json();
    const branchesJson = await branchesReq.json();

    return {
        user: userJson,
        branches: branchesJson
    }
}