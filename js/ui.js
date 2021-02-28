function data() {
    fetchStartup().then(results => {
        results['branches'].forEach(obj => {
            obj.getDetails();
            console.log(obj);
            //obj.display('bc');
        });
    });
}
data();

function getBranch() {

}