window.onload = runFetchStartup();
let f;
console.log(f);
async function runFetchStartup() {
    const ff = await fetchStartup();
    f = ff;
}
console.log( f);