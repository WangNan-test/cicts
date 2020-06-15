window.onload = function() {
    document.getElementById("name").addEventListener("blur",function(){
        validateName() ;
    },false) ;
    document.getElementById("price").addEventListener("blur",function(){
        validatePrice() ;
    },false) ;
    document.getElementById("note").addEventListener("blur",function(){
        validateNote() ;
    },false) ;
    document.getElementById("item").addEventListener("blur",function(){
        validateItem() ;
    },false) ;
    tagObject = document.all("tag") ;
    if (tagObject.length == undefined) {
        tagObject.addEventListener("click",validateTag,false) ;
    } else {
        for (x = 0 ; x < tagObject.length ; x ++) {
            tagObject[x].addEventListener("click",validateTag,false) ;
        }
    }
    document.getElementById("goodsForm").addEventListener("submit",
        function(event){
            if (!(validateName() & validatePrice() & validateItem() & validateTag() & validateNote())) {
                event.preventDefault() ;	// 阻止表单提交
            }
        },false) ;
}
function validateTag() {
    return validateLessOne("tag") ;
}
function validateName() {
    return validateEmpty("name") ;
}
function validatePrice() {
    return validateRegex("price",/^\d+(\.\d{1,2})?$/) ;
}
function validateItem() {
    return validateEmpty("item") ;
}
function validateNote() {
    return validateEmpty("note") ;
}
