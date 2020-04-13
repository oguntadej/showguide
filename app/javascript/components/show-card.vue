/* <template>
  <div class="row border mt-5 rounded p-2 show-card">
    <div class="col-2 py-3">
      <img :src="show.avatar" class="card-img img-fluid show-image" />
    </div>
    <div class="col-10 pt-3 row">
      <div class="card border-0 col-12">
        <div class="card-body">
          <h5 class="card-title font-weight-bold">{{show.title}}</h5>
          <p class="card-text" v-html="show.description"></p>
          <p class="card-text">
           <!--  <button type="button" class="btn btn-sm btn-primary border">
              I want to watch
              <span class="badge badge-light">4</span>
            </button>&nbsp;
            <button type="button" class="btn btn-sm btn-success" @click="testing()">
              <i class="fa fa-heart"></i> &nbsp;
              Recommend
              <span class="badge badge-light">{{this.recommendation}}</span>
            </button> &nbsp; -->
            <small class="text-muted">{{show.genre.join(', ')}}</small> &nbsp;
          </p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "ShowCardComponent",
  props: ["show"],
  data() {
    return {
      recommendation: 0
    };
  },

  methods: {
    testing() {
      this.recommendation++;
    }
  }
};
</script>

<style scoped>
</style>
 */