
//declear regular expression 
var smallreg = /[a-z]/
var capitalreg = /[A-Z]/
var numberreg = /[0-9]/
var specialcharacter = /[$#@%^&*]/

var element = document.getElementById("main");
element.scrollTop = element.scrollHeight;
field = {
    'login': false,
    'singup': false,
    'message': false,
    'status': 0
}
// console.log(field.login);

function login() {

    addBlourWindow()
    login_box = document.getElementById('login_box')
    login_box.classList.add('active')
    field.singup = false
    field.login = true
    field.message = false
    field.status = 1


}
// ###################3 close login box 

document.getElementById('login_box_close').addEventListener('click', () => {

    removeBlourWindow()
    login_box.classList.remove('active')
})

//###########3 logout 
function logout() {
    var elem = document.createElement('div')
    elem.id = 'before_chat'
    document.getElementById('main').appendChild(elem)

    // console.log('working........')
    document.getElementById('show_name').innerHTML = ""
    document.getElementById("msg").disabled = true;
    console.log("log out ....")
    field.singup = false
    field.login = false
    field.message = false
    field.status = 4
    loadDoc(JSON.stringify({
        'status': 4,
        'field': 'logout'
    }))
}
//######### add blour in window ###############
function addBlourWindow() {
    var blour_div = document.createElement('div')
    blour_div.setAttribute('id', 'blour')
    document.body.appendChild(blour_div)

}
//####### remove blour window  #########333
function removeBlourWindow() {
    var x = document.getElementById('blour')
    // console.log(x)
    document.body.removeChild(x)
}


// ###################### signup 

function signup() {
    login_box.classList.remove('active')
    console.log('singup')
    sign_up = document.getElementById('signup_box')
    sign_up.classList.add('active')
    field.singup = true
    field.login = false
    field.message = false
    field.status = 2
    console.log(field)
}

//#close singup box 
document.getElementById('signup_box_close').addEventListener('click', () => {

    removeBlourWindow()
    signup_box.classList.remove('active')
})

//################ submit from validataion #################3
function submitSingupFrom() {

    if (usernameValidation() && passwordValidation() && nameValidation() && emailValidation()) {
        signUpJson = JSON.stringify({
            'username': document.getElementById('username').value,
            'password': document.getElementById('password').value,
            'name': document.getElementById('fname').value,
            'email': document.getElementById('email').value,
            'status': 2
        })
        loadDoc(signUpJson)
        removeBlourWindow()
        signup_box.classList.remove('active')
    }
}

// ############ username validation #################
function usernameValidation() {
    var err = document.getElementById('sp001')
    var username = document.getElementById('username').value;
    if (username.length == 0) {
        err.innerHTML = "Null field not allowed"
        return false
    } else if (username.length < 5) {
        err.innerHTML = "Minimum 5 Character Required"
        return false
    } else if (!smallreg.test(username)) {
        err.innerHTML = "one small Character Required"
        return false
    } else if (!capitalreg.test(username)) {
        err.innerHTML = "one capital Character Required"
        return false
    } else if (!specialcharacter.test(username)) {
        err.innerHTML = "one special Character Required"
        return false
    } else if (!numberreg.test(username)) {
        err.innerHTML = "one number  Required"
        return false
    }
    return true
}

// ############## namevalidation #####################
function nameValidation() {
    fname = document.getElementById('fname').value;
    err = document.getElementById('sp003')

    if (fname.length == 0 || fname.length == null) {
        err.innerHTML = "null field not allowed";
    }
    else if (fname.length < 3) {
        err.innerHTML = "minimum 3 character required"
    }
    else if (specialcharacter.test(fname)) {
        err.innerHTML = "one special Character allowed"
        return false
    } else if (numberreg.test(fname)) {
        err.innerHTML = "no number allowed"
        return false
    }
    return true
}
// #####################passwordValidation
function passwordValidation() {
    var err = document.getElementById('sp002')
    var password = document.getElementById('password').value;
    if (password.length == 0) {
        err.innerHTML = "Null field not allowed"
        return false
    } else if (password.length < 8) {
        err.innerHTML = "Minimum 8 Character Required"
        return false
    } else if (!smallreg.test(password)) {
        err.innerHTML = "one small Character Required"
        return false
    } else if (!capitalreg.test(password)) {
        err.innerHTML = "one capital Character Required"
        return false
    } else if (!specialcharacter.test(password)) {
        err.innerHTML = "one special Character Required"
        return false
    } else if (!numberreg.test(password)) {
        err.innerHTML = "one number  Required"
        return false
    }
    return true
}

//############ Email Validation #############

function emailValidation() {
    email = document.getElementById('email').value
    err = document.getElementById('sp004')

    var reg = /^([a-zA-z0-9\.-]+)@([a-zA-z]+).([a-z]){2,5}$/
    if (email.length == 0 || email.length == null) {
        err.innerHTML = "Null field not allowed"
        return false
    }
    if (!reg.test(email)) {
        err.innerHTML = "Invalid email"
        return false
    }
    return true
}


// #########3 reset all error field 
function resetall() {
    document.getElementById('sp001').innerHTML = ""
    document.getElementById('sp002').innerHTML = ""
    document.getElementById('sp003').innerHTML = ""
    document.getElementById('sp004').innerHTML = ""
}
// ######################## Login Submit ##################
function login_submit() {
    loginJson = JSON.stringify({
        'username': document.getElementById('login_username').value,
        'password': document.getElementById('login_password').value,
        'status': 1

    })
    // console.log(loginJson)
    loadDoc(loginJson)

    removeBlourWindow();
    login_box = document.getElementById('login_box')
    login_box.classList.remove('active')
    document.getElementById('msg').disabled = false
}

// ######################## show message Box ############################

function sentMessage() {
    console.log('sent messages ...')

    field.singup = false
    field.login = false
    field.message = true
    field.status = 3

    document.addEventListener('keydown', (key) => {
        if (key.which == 13) {
            textval = document.getElementById('msg').value
            msgsentflag = false

            console.log('length of the msg is ' + textval.length)

            if (textval.length != 0) {
                console.log('msg sent ')
                messageJson = JSON.stringify({
                    'message': textval,
                    'username': document.getElementById('show_name').innerHTML,
                    'status': 3,
                    "messagesshow": 0
                })
                msgsentflag = true
            }


            // msg = document.getElementById('msg').value
            // messageBox(msg)
            document.getElementById('msg').value = ""
            document.getElementById('main').focus()

            if (msgsentflag)
                loadDoc(messageJson)
        }
    })
}
function messageBox(msg, user, time) {

    var message = `<div class="sent_msg" id="sent_msg">
    <div id="sender_name">${user}</div><span ><i class="fas fa-trash-alt"></i></span>
    <p>${msg}</p>
    <span class="time">${time}</span>
    </div><br>
    `
    document.getElementById('main').innerHTML += message
}

function othersMessages(msg, user, time) {
    let message = `
    <div class="receive_msg " id="receive_msg">
    <div id="receiver_name">${user}</div><span><i class="fas fa-trash-alt"></i></span>
    <p>${msg}</p>
    <span class="time">${time}</span>
    </div><br>
    `
    document.getElementById('main').innerHTML += message
}

function displayMessages(decodeJson) {
    let currentUser = document.getElementById('show_name').innerHTML;
    for (let index = 0; index < decodeJson.length; index++) {
        const element = decodeJson[index];
        let UserName = element['username']
        // console.log(UserName)
        let Post = element['post']

        let postDate = element['date']
        if (UserName == currentUser) {
            messageBox(Post, UserName[0], postDate)

        } else {
            othersMessages(Post, UserName[0], postDate)
            // console.log("others messages ")
        }
    }
}
function loadDoc(JsonFile) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var response = this.responseText;
            // console.log(response)
            var decodeJson = JSON.parse(response)

            if (decodeJson.field === 'login') {
                var elem = document.getElementById('before_chat')
                elem.parentNode.removeChild(elem)
                // console.log('working........')
                document.getElementById('show_name').innerHTML = decodeJson.username
                document.getElementById("msg").disabled = false;
                document.getElementById('logout1').disabled = false;

                var main = document.getElementById('main')
                main.style.display = "block";
                main.style.top = 0 + 'px'
                document.getElementById('msg').focus()


                // document.getElementById('main').scrollTo(0, document.getElementById('main'))

                xhttp.open("post", "./php/index2.php", true);
                xhttp.send(JSON.stringify({
                    "status": 3,
                    'messagesshow': 1
                }))

            } else {
                if (decodeJson.showmsg == false) {
                    
                    // document.getElementById("sent_msg").classList.add('remove')
                    // document.getElementById("receive_msg").classList.add('remove')
                    // document.getElementById("msg").disabled = true;
                    // var elem = document.createElement('div')
                    // elem.id = 'before_chat'
                    // document.getElementById('main').appendChild(elem)

                    login();

                    // console.log('non showing msg')
                }
                else {
                    var main = document.getElementById('main')
                    main.style.display = "block";
                    main.style.top = 0 + 'px'
                    document.getElementById('msg').focus()

                    displayMessages(decodeJson);
                    // console.log('showing msg ')
                }

            }



        }
    };
    xhttp.open("post", "./php/index2.php", true);
    if (field.login) {

        xhttp.send(JsonFile);
    } else if (field.singup) {
        // console.log("sing up field is true ........")
        xhttp.send(JsonFile)
    } else if (field.message) {
        xhttp.send(JsonFile)
    } else {
        xhttp.send(JsonFile)
    }
}

// ################ delete element 
// document.getElementById('delete').addEventListener('click',()=>{
//     console.log('delete')
// })