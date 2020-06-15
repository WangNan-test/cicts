window.onload = function() {
    document.getElementById("deleteBut").addEventListener("click",function (ev) {
        deleteForward("gid","goods/delete") ;
    },false)
    document.getElementById("sabut").addEventListener("click",function (ev) {
        selectAll("sabut", "gid") ;
    } ,false) ;
}