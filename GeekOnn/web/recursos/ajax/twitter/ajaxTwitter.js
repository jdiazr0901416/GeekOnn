var checko;
checko =0;
function checkboxOn(){
    console.log("entre a check");
    if (this.checko===0){
        this.checko=1;
        console.log("lo hice 1");
    }else{
        this.checko=0;
        console.log("lo hice 0");
    }
}