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
    document.getElementById("photo").addEventListener("blur",function(){
        validatePhoto() ;
    },false) ;

    document.getElementById("goodsForm").addEventListener("submit",
        function(event){
            if (!(validateName() & validatePrice() & validateItem() & validatePhoto()  & validateNote())) {
                event.preventDefault() ;	// 阻止表单提交
            }
        },false) ;
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
function validatePhoto() {
    return validateEmpty("photo") ;
}
function validateNote() {
    return validateEmpty("note") ;
}



