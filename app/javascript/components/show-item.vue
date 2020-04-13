<template>
  <div class="container mt-3">
    <div class="row">
      <div class="col-md-2">
        <img :src="show.image.medium" class="card-img img-fluid show-header-image" />
      </div>
      <div class="col-md-8 mt-4">
        <h3 class="show-name">
          {{show.name}}
          <span class="small">(2002 - Present)</span>
        </h3>
        <p class="small" v-html="show.summary"></p>
        <p>{{show.genres.join(', ')}}</p>
      </div>
      <div class="col-md-2 mt-5">
       <!--  <button type="button" class="btn btn-sm btn-success">
            <i class="fa fa-heart"></i> &nbsp;
            Recommend
            <span class="badge badge-light">150</span>
          </button> &nbsp; -->
      </div>
    </div>

    <div class="row mt-4">
      <div class="col-md-8 p-3">
        <iframe
          id="ytplayer"
          type="text/html"
          width="700"
          height="360"
          :src="trailerUrl"
          frameborder="0"
        ></iframe>
      </div>

      <div class="col-md-3 mx-4 p-4 border rounded">
        <h4>Info</h4>
        <p class="small">
          <span class="font-weight-bold">{{show.network.name}} ({{show.status}})</span><br>
          <span>Network</span>
        </p>
        <p class="small" v-if="show.status == 'Running'">
          <span class="font-weight-bold">{{show.schedule.days.join(', ')}} at {{show.schedule.time}}</span><br>
          <span>Schedule</span>
        </p>
        <p class="small">
          <span class="font-weight-bold">Running</span><br>
          <span>Status</span>
        </p>
        <p class="small">
          <span class="font-weight-bold">{{lastEpisodeAirDate}}</span><br>
          <span>Last Episode</span>
        </p>
        <p class="small">
          <span class="font-weight-bold"><a :href="show.officialSite" target="_blank">{{show.officialSite}}</a></span><br>
          <span>Official Site</span>
        </p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
 props: ['show'],
 computed: {
   lastEpisodeAirDate(){
      return this.show._embedded.previousepisode.airdate;
   },
   trailerUrl(){
     return `https://www.youtube.com/embed?listType=search&list=${this.show.name}`
   }
 }
};
</script>

<style scoped>
.show-header-image {
  width: 200px;
}
</style>
