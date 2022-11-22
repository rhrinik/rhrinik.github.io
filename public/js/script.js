function initialize() {
    let registerSubmitForm = document.getElementById('registerSubmitForm');
    registerSubmitForm.onsubmit = (event) => {
        if (!checkLogin() || !checkPassword())
            event.preventDefault();
    }

    let brs = document.getElementById('buttonRegisterSubmit');
    brs.onclick = checkPassword;
}

function checkLogin() {
    let login = document.getElementById('login');

    if (login.value.length < 5) {
        let registerFailText = document.getElementById('registerFailText');
        registerFailText.innerHTML = "Meno musí mať aspoň 5 znakov.";
        return false;
    }

    //duplikatne meno sa tu neda zistit

    return true;
}

function checkPassword() {
    let password = document.getElementById('password');

    if (password.value.length < 5) {
        let registerFailText = document.getElementById('registerFailText');
        registerFailText.innerHTML = 'Heslo musí mať aspoň 5 znakov.';
        return false;
    }

    if (password.value.toLowerCase() === password.value) {
        let registerFailText = document.getElementById('registerFailText');
        registerFailText.innerHTML = 'Heslo musí obsahovať aspoň jedno veľké písmeno.';
        return false;
    }

    if (password.value.toUpperCase() === password.value) {
        let registerFailText = document.getElementById('registerFailText');
        registerFailText.innerHTML = 'Heslo musí obsahovať aspoň jedno malé písmeno.';
        return false;
    }

    if (!password.value.match(/[0123456789]/)) {
        let registerFailText = document.getElementById('registerFailText');
        registerFailText.innerHTML = 'Heslo musí obsahovať aspoň jedno číslo.';
        return false;
    }

    if (!password.value.match(/[~`!@#$%^&*()/_\-+={[}]|\\:;"'<,>.?]/)) {
        let registerFailText = document.getElementById('registerFailText');
        registerFailText.innerHTML = 'Heslo musí obsahovať aspoň jeden znak.';
        return false;
    }

    return true;
}

window.onload = initialize;