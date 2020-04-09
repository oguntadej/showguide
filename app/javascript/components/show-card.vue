/* <template>
    <div class="row border mt-5 rounded p-2 show-card">
      <div class="col-2 py-3">
        <img src="https://joeschmoe.io/api/v1/random" class="card-img img-fluid show-image" />
      </div>
      <div class="col-10 pt-3 row">
        <div class="card border-0 col-12">
          <div class="card-body">
            <h5 class="card-title font-weight-bold">One big movie</h5>
            <p class="card-text"> 
              Manchester, UK based designer who wears many hats but is widely known for his vibrant, elegant and fun designs.
            </p>
            <p class="card-text">
              <button type="button" class="btn btn-sm btn-primary border">
                I want to watch
                <span class="badge badge-light">4</span>
              </button>&nbsp;
               <button type="button" class="btn btn-sm btn-success" @click="testing()">
            <i class="fa fa-heart"></i> &nbsp;
            Recommend
            <span class="badge badge-light">{{this.recommendation}}</span>
          </button> &nbsp;
              <small class="text-muted">{{["Crime", "Drama"].join(', ')}}</small> &nbsp;
            </p>
          </div>
        </div>
      </div>
    </div>
</template>

<script>
export default {
  name: "ShowCardComponent",
  props: ['show'],
  data() {
    return{
      recommendation: 0,
    }
  },
  
  methods: {
    testing(){
      this.recommendation++;
    }
  }
};
</script>

<style scoped>
.show-image {
  width: 200px;
}
.show-card, .card{
  background-color: #e9e9e9;
}
</style>
 */