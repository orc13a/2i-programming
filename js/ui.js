let f;

/*async function test() {
    const result = await fetchStartup();
    console.log(result);
}
test();*/

const asyncExample = async () => {
    const result = await fetchStartup(users)

    return result
}

;(async () => {
    const users = await asyncExample()
    console.log(users)
})()