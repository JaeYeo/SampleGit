
    window.onload = function() {
 
    function onClick() {
        document.querySelector('.login-page1').style.display ='block';
        document.querySelector('.login-bg').style.display ='block';
    }   
    function offClick() {
        document.querySelector('.login-page1').style.display ='none';
        document.querySelector('.login-bg').style.display ='none';
    }
 
    document.getElementById('.login_btn').addEventListener('click', onClick);
    document.querySelector('.login-close').addEventListener('click', offClick);
 }

