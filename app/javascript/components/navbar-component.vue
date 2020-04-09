<template>
  <nav class="navbar navbar-expand-lg navbar-dark navbar-dark-bg">
    <div class="container">
      <a class="navbar-brand" href="#">Showguide</a>
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarNavDropdown"
        aria-controls="navbarNavDropdown"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <div class="mx-auto">
          <vue-bootstrap-typeahead
            v-model="query"
            :data="shows"
            :serializer="s => s.show.name"
            placeholder="Search for shows..."
            size="lg"
            inputClass="rounded-pill"
          >
            <template slot="append">
              <button
                class="btn rounded-pill border-0 ml-n5"
              >
              <i class="fa fa-search"></i>
              </button>
            </template>
          </vue-bootstrap-typeahead>
        </div>
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="#">Shows</a>
          </li>
          <li class="nav-item dropdown" v-if="this.currentUser">
            <a
              class="nav-link dropdown-toggle"
              href="#"
              id="navbarDropdownMenuLink"
              role="button"
              data-toggle="dropdown"
              aria-haspopup="true"
              aria-expanded="false"
            >My Profile</a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
            </div>
          </li>
          <li class="nav-item" v-else>
            <a class="nav-link" href="#">Sign In</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</template>

<script>
import VueBootstrapTypeahead from "vue-bootstrap-typeahead";
import axios from "axios";
import debounce from "lodash.debounce";
const API_URL = 'https://api.tvmaze.com/search/shows?q=:query'
export default {
  data: function() {
    return {
      shows: [],
      query: '',
    };
  },
  props: ["currentUser"],
  components: {
    VueBootstrapTypeahead
  },
  methods: {
    async getShows(query){
      axios.get(API_URL.replace(':query', query))
      .then((result) => {
        this.shows = result.data
      })
    }
  },

  watch: {
    query: debounce(function(query){ this.getShows(query); }, 500)
  }
};
</script>

<style scoped>
</style>