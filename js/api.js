async function fetchStartup() {
    const userReq = await fetch('https://api.github.com/users/orc13a');
    const branchesReq = await fetch('https://api.github.com/repos/orc13a/2i-programming/branches');

    const userJson = await userReq.json();
    const branchesJson = await branchesReq.json();
    
    let bracnhesObjs = [];
    
    branchesJson.forEach(obj => {
        bracnhesObjs.push(new Branch(obj.name));
    });

    return {
        user: userJson,
        branches: bracnhesObjs
    }
}