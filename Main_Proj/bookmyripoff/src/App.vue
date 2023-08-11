<template>
    <div id="app">
        <nav class="navbar navbar-expand-sm bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">bookMyRipOff</a>
                <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <router-link
                                to="/"
                                class="nav-link active"
                                aria-current="page"
                                href="#"
                                >Home</router-link
                            >
                        </li>
                        <li class="nav-item">
                            <router-link
                                to="/about"
                                class="nav-link active"
                                aria-current="page"
                                href="#"
                                >About</router-link
                            >
                        </li>
                        <li class="nav-item">
                            <router-link
                                to="/login"
                                class="nav-link active"
                                aria-current="page"
                                href="#"
                                >Login</router-link
                            >
                        </li>
                    </ul>
                    <form class="d-flex" role="search">
                        <input
                            class="form-control me-2"
                            type="search"
                            placeholder="Search"
                            aria-label="Search" />
                        <button class="btn btn-outline-success" type="submit">
                            Search
                        </button>
                    </form>
                </div>
            </div>
        </nav>
        <router-view />
    </div>
</template>

<!-- <style>
    #app {
        font-family: Avenir, Helvetica, Arial, sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        text-align: center;
        color: #2c3e50;
    }
    router-link {
        font-weight: bold;
        color: aquamarine;
    }
</style> -->

<script>
    import "./App.css";
    export default {
        name: "App",
    };
</script>
