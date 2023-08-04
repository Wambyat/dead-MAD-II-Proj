// import Vue from 'vue'

const MessageBoard = Vue.component('message-board',{
    template : `
    <div v-if="trigger == false">
    <p >Before vue's nonsense</p>
    Name: <input type="text" v-model="name">
    <button v-on:click="clickFunc" v-on:mouseover="mouseFunc"> Say Hi 🔫</button>
    </div>
    <div v-else>
    <h3> {{names[0]}}'s Board</h3>
    <p>{{ message }}</p>
    Name: <input type="text" v-model="name">
    <button v-on:click="clickFunc" v-on:mouseover="mouseFunc"> Say Hi 🔫</button>
    <ul>
        <li v-for="na in names">{{na}}</li>
    </ul>
    <p>Num of ppl {{count}}</p>
    </div>
    `,
    data: function() {
        return {
            message: "default message",
            trigger: false,
            name: "",
            names:[]
        }
    },
    methods: {
        clickFunc: function(){
            this.message = "Vue is fun! Also hi!"+this.name
            this.trigger = true
            this.names.push(this.name)
            this.$emit('add-name',this.name)
            this.name = ""
        },
        mouseFunc: function(){
            this.message = "Oooohhh Wierd mouse shit"
        }
    },
    computed : {
        count: function() {
            // return 1;
            return this.names.length;
        }
    }
})

const AboutPage = Vue.component('about',{
    template : `
    <h1> ABOUT </h1>
    `
})

const ContactPage = Vue.component('contact',{
    template : `
    <h1> CONTACT </h1>
    `
})

const routes = [{
    path : '/',
    component : MessageBoard
}, {
    path : '/about',
    component : AboutPage
}, {
    path : '/contact',
    component : ContactPage
}];

const router = new VueRouter({
    routes
})

var app = new Vue({
    el: "#app",
    router: router,
    data: {
        allNames : []
    },
    methods: {
        addNameFunc(name) {
            this.allNames.push(name);
        }
    }
})

// let message = "After vue-ing"
// var app = new Vue({
//     el: "#app",
//     data: {
//         message: message,
//         trigger: false,
//         name: "",
//         names:[],
//     },
//     methods: {
//         clickFunc: function(){
//             this.message = "Vue is fun! Also hi!"+this.name
//             this.trigger = true
//             this.names.push(this.name)
//             this.name = ""
//         },
//         mouseFunc: function(){
//             this.message = "Oooohhh Wierd mouse shit"
//         }
//     },
//     computed : {
//         count: function() {
//             return this.names.length;
//         }
//     }
// })