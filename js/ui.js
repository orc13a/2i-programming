function data() {
    fetchStartup().then(results => {
        results['branches'].forEach(obj => {
            obj.getDetails();
            //obj.display('bc');
        });
    });
}
data();

function getBranch() {

}