<template>
  <div class="show">
    <div class="container-fluid">
      <div class="row show-header p-5" :style="{ backgroundImage: `url(${show.image.original})` }"></div>
    </div>
    <div class="container mt-3">
      <div class="row">
        <div class="col-md-3">
          <img :src="show.image.original" class="card-img img-fluid show-header-image" />
        </div>
        <div class="col-md-6 mt-4">
          <h3 class="show-name font-weight-bold">
            {{show.name}}
            <span class="small">({{show.status}})</span>
          </h3>
          <p v-html="show.summary"></p>
          <p>{{show.genres.join(', ')}}</p>
         <!--  <p>
            <button type="button" class="btn btn-sm btn-success">
              <i class="fa fa-heart"></i> &nbsp;
              Recommend
              <span class="badge badge-light">150</span>
            </button> &nbsp;
            <button type="button" class="btn btn-sm btn-primary">
              <i class="fa fa-bookmark"></i> &nbsp;
              Add to Watch list
              <span class="badge badge-light">150</span>
            </button> &nbsp;
          </p> -->
        </div>
        <div class="col-md-3 p-4 show-info rounded">
          <h5>Info</h5>
          <p class="small">
            <span class="font-weight-bold">{{showNetwork}}</span>
            <br />
            <span>Network</span>
          </p>
          <p class="small" v-if="show.status == 'Running'">
            <span
              class="font-weight-bold"
            >{{show.schedule.days.join(', ')}}</span>
            <br />
            <span>Schedule</span>
          </p>
          <p class="small">
            <span class="font-weight-bold">{{show.status}}</span>
            <br />
            <span>Status</span>
          </p>
          <p class="small">
            <span class="font-weight-bold">{{lastEpisodeAirDate}}</span>
            <br />
            <span>Last Episode</span>
          </p>
          <p class="small">
            <span class="font-weight-bold">
              <a :href="show.officialSite" target="_blank">{{show.officialSite}}</a>
            </span>
            <br />
            <span>Official Site</span>
          </p>
        </div>
      </div>

      <div class="row mt-4">
        <div class="col-md-12 p-3">
          <div class="videoWrapper">
            <iframe
            id="ytplayer"
            type="text/html"
            width="1100"
            height="560"
            :src="trailerUrl"
            frameborder="0"
          ></iframe>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["show"],
  computed: {
    lastEpisodeAirDate() {
      console.log(this.show);
      return this.show._embedded.previousepisode.airdate;
    },
    trailerUrl() {
      return `https://www.youtube.com/embed?listType=search&list=${this.show.name} show trailer`;
    },
    showNetwork() {
      return this.show.network == null
        ? this.show.webChannel.name
        : this.show.network.name;
    }
  }
};
</script>

<style scoped>

</style>
