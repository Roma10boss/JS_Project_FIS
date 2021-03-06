const BASE_URL = "http://localhost:3000"
const GIFTS_URL = `${BASE_URL}/gifts`
// const GIFTS_URL = `https://fakestoreapi.com/products`
const USERS_URL = `${BASE_URL}/users`
const FAVORITES_URL = `${BASE_URL}/favorites`
const giftCollection = document.querySelector('#gift-collection')
const favCollection = document.querySelector('#fav-collection')
const likeButton = document.querySelector('.like-btn')
const signupForm = document.querySelector('#signup-form')
const signupInputs = document.querySelectorAll(".signup-input")
const header = document.querySelector('.header-banner')
const logout = document.querySelector('.logout')
const userComments = document.querySelector('#user-comments')
const userCommentsForm = document.querySelector('#user-comments-form')
let currentUser

class Gift {
    constructor(giftAttributes) {
        this.title = giftAttributes.title;
        this.price = giftAttributes.price;
        this.category = giftAttributes.category;
        this.description = giftAttributes.description;
        this.link = giftAttributes.link;
        this.image = giftAttributes.image;
        this.id = giftAttributes.id;
    }

    render() {
        return `<div class="card">
                  <h2>${this.title.length > 35 ? this.title.slice(0, 35) + '...' : this.title} ($${this.price})</h2>
                  <h4 class="gift-cat">${this.category}</h4>
                  <a href=${this.link} target="_blank"><img src=${this.image} class="gift-image" /></a>
                  <p>${this.description.length > 160 ? this.description.slice(0, 160) + '...' : this.description}<p>
                  <button data-gift-id=${this.id} class="like-btn">♡</button>
                </div>`
    }
}

function putGiftsOnDom(giftArray) {
    giftCollection.innerHTML = `<h2 class="subheader">All Gift Ideas</h2>
                                <button class="favorites-link">View My Favorites ♡</button>
                                <br/><br/><br/>`

    giftArray.forEach(gift => {
        giftCollection.innerHTML += new Gift(gift).render()
    })
}

function putFavoritesOnDom(favArray) {
    favCollection.innerHTML = `<h2 class="subheader">My Favorites</h2>
                               <h4 class="back-link">←Back to Gifts</h4>`
    favArray.forEach(favorite => {
        favCollection.innerHTML += `<div class="card">
          <h2>${favorite.gift.title} ($${favorite.gift.price})</h2>
          <h4 class="gift-cat">${favorite.gift.category}</h4>
          <a href=${favorite.gift.link} target="_blank"><img src=${favorite.gift.image} class="gift-image" /></a>
          <p>${favorite.gift.description}<p>
          <button data-fav-id=${favorite.id} data-gift-id=${favorite.gift.id} class="like-btn" style="color:red;">♡</button>
        </div>`
    });
}

function fetchGifts() {
    fetch(GIFTS_URL)
        .then(res => res.json())
        .then(gifts => putGiftsOnDom(gifts))
}

function fetchFavorites() {
    fetch(BASE_URL + '/users/' + currentUser.id + '/favorites')
        .then(res => res.json())
        .then(favorites => putFavoritesOnDom(favorites))
}

function loggedInUser(object) {
    console.log("object>>>", object)
    currentUser = object
    signupForm.style.display = 'none'
    welcome.innerHTML = `<h3>Hello, <i>${currentUser.email}</i> !</h3>`
    logout.innerText = "Logout"
    fetchGifts()
}

signupForm.addEventListener('submit', function (e) {
    //debugger
    e.preventDefault();
    console.log('gdddot here==>>', e, 'll', signupInputs)
    fetch(USERS_URL, {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            //Accept: "application/json"
        },
        body: JSON.stringify({
            user: {
                email: signupInputs[0].value,
                password: signupInputs[1].value
            }
        })
    })
        .then(res => res.json())
        .then(function (object) {
            console.log('got here==>>', object)
            localStorage.setItem('user', JSON.stringify(object));
            if (object.message) {
                alert(object.message)
            }
            else {
                loggedInUser(object)
            }
        }).catch(err => console.log('an error occured==>>', err))
});

logout.addEventListener('click', (e) => {
    signupForm.style.display = 'block';
    welcome.innerHTML = '';
    logout.innerText = "";
    giftCollection.innerHTML = '';
    signupInputs[0].value = '';
    signupInputs[1].value = '';
    localStorage.removeItem('user');
});

userCommentsForm.addEventListener('submit', function (e){
    //debugger
    e.preventDefault(); 
    // add on the upper comments and recreate a new line everytime something else is submit.
    // clear the for after.
    console.log('#userCommentsForm', e, 'll', userCommentsForm)  
    const searchInput = document.getElementById('search-input').value
    userComments.innerHTML = searchInput;
    
})


giftCollection.addEventListener('click', function (e) {
    if (event.target.className == "favorites-link") {
        giftCollection.style.display = 'none';
        fetchFavorites();
        favCollection.style.display = 'initial';
    }

    // console.log(event.target.className, event.target.style.color)
    // e.preventDefault() was preventing images from being clickable
    if ((event.target.className == "like-btn") && (event.target.style.color !== 'red')) {
        let target = event.target
        fetch(FAVORITES_URL, {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
                Accept: "application/json"
            },
            body: JSON.stringify({
                user_id: `${currentUser.id}`,
                gift_id: `${event.target.dataset.giftId}`
            })
        })
            .then(res => res.json())
            .then(res => target.dataset.favId = res.id);
        event.target.style.color = 'red';
    }
    else if ((event.target.className == "like-btn") && (event.target.style.color == 'red')) {
        event.target.style.color = 'black';
        fetch(FAVORITES_URL + '/' + event.target.dataset.favId, {
            method: "DELETE"
        })
    }    
});

favCollection.addEventListener('click', async function (e) {
    if (event.target.className == "back-link") {
        favCollection.style.display = 'none';
        giftCollection.style.display = 'initial';
    }

    // console.log(event.target.className, event.target.style.color)
    // e.preventDefault() was preventing images from being clickable
    if ((event.target.className == "like-btn") && (event.target.style.color == 'red')) {
        event.target.style.color = 'black';
        await fetch(FAVORITES_URL + '/' + event.target.dataset.favId, {
            method: "DELETE"
        });
        fetchFavorites();
    }    
});

let user = localStorage.getItem('user');
if (user) {
    user = JSON.parse(user);
    loggedInUser(user);
} 


//localStorage.setItem('user', JSON.stringify(object));