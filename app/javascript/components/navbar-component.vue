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
        
        
       
        <ul class="navbar-nav ml-auto">
            <vue-bootstrap-typeahead
            v-model="query"
            :data="shows"
            :serializer="s => s.show.name"
            placeholder="Search for shows"
            inputClass="rounded-pill"
            @hit="selectedShow = $event"
          >
            <template slot="append">
              <button class="btn rounded-pill border-0 ml-n5">
                <i class="fa fa-search"></i>
              </button>
            </template>
          </vue-bootstrap-typeahead>
         <!--  <li class="nav-item">
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
          </li> -->
        </ul>
      </div>
    </div>
  </nav>
</template>

<script>
import VueBootstrapTypeahead from "vue-bootstrap-typeahead";
import axios from "axios";
import debounce from "lodash.debounce";
import Showguide from '../packs/general'
let showguide = new Showguide();
axios.defaults.headers.common["X-CSRF-Token"] = document
  .querySelector('meta[name="csrf-token"]')
  .getAttribute("content");
export default {
  data: function() {
    return {
      shows: [],
      query: "",
      selectedShow: ""
    };
  },
  props: ["currentUser"],
  components: {
    VueBootstrapTypeahead
  },
  methods: {
    async getShows(query) {
      axios.get(showguide.find_shows_url().replace(":query", query)).then(result => {
        this.shows = result.data;
      })
      .catch(error => console.log(error));
    },

    saveShow() {
      axios
        .post(showguide.create_show_url(), {
          show: this.selectedShow.show
        })
        .then(result => window.location.href = `/shows/${result.data}`);
    }
  },

  watch: {
    query: debounce(function(query) {
      this.getShows(query);
    }, 500),
    selectedShow: function() {
      this.saveShow();
    }
  }
};
</script>

<style scoped>
</style>