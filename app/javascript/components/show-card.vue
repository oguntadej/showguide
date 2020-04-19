/* <template>
  <div class="show-card mb-5">
    <div class="show-image">
      <img :src="show.avatar" class="img-fluid show-avatar" />
      <p class="mt-3 mb-2 font-weight-bold">{{show.title}}</p>
       <p v-html="truncate(show.description, 120)" class="pr-1"></p>
    </div>
   <!--  <div class="card">
      <div class="card-body row">
        <div class="col-2">
          <img :src="show.avatar" class="img-fluid" />
        </div>
        <div class="col-10 show-description">
          <h5>{{show.title}}</h5>
          <p v-html="truncate(show.description, 600)"></p>
          <p class="font-weight-bold">{{show.genre.join(', ')}}</p>
        </div>
      </div>
    </div> -->
    <!--  <div class="card">
      <div class="card-header">
        <span class="font-weight-bold">{{show.title}}</span>
        <button
          type="button"
          class="btn btn-sm float-right"
          :class="recommended"
          @click="testing()"
        >
          <i class="fa fa-heart"></i>
          {{this.recommendation}}
        </button>
      </div>
      <div class="card-body">
        <p class="card-text">
          <img :src="show.avatar" class="img-fluid show-image" />
        </p>
      </div>
    </div>-->
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
    },
    truncate(value, length) {
      return value.length > length ? value.substring(0, length) + "..." : value;
    }
  },

  computed: {
    recommended() {
      return this.recommendation > 0 ? "btn-success" : "btn-outline-success";
    }
  }
};
</script>

<style scoped>
</style>
 */