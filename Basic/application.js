let message = "After vue-ing"

var app = new Vue({
    el: "#app",
    data: {
        message: message,
        trigger: false,
        name: "",
        names:[],
    },
    methods: {
        clickFunc: function(){
            this.message = "Vue is fun! Also hi!"+this.name
            this.trigger = true
            this.names.push(this.name)
            this.name = ""
        },
        mouseFunc: function(){
            this.message = "Oooohhh Wierd mouse shit"
        }
    },
    computed : {
        count: function() {
            return this.names.length;
        }
    }
})