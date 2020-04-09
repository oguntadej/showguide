<template>
  <div class="container mt-3">
    <div class="row">
      <div class="col-md-2">
        <img src="https://joeschmoe.io/api/v1/random" class="card-img img-fluid show-header-image" />
      </div>
      <div class="col-md-8 mt-4">
        <h3>
          Vikings
          <span class="small">(2002 - Present)</span>
        </h3>
        <p class="small">
          Apple is finally catching up with Microsoft. That's a sentence I never thought I would say!
          And $281 for a keyboard? Apple is really stretching the pricing limit!
        </p>
        <p>
          <a href="#" class="btn btn-secondary btn-sm">Crime</a>&nbsp;
          <a href="#" class="btn btn-sm btn-secondary">Thriller</a>
&nbsp;
        </p>
      </div>
      <div class="col-md-2 mt-5">
        <button type="button" class="btn btn-primary btn-lg">
          <i class="fa fa-heart"></i> &nbsp;
          <span class="small text-uppercase font-weight-bold">Luvvit &nbsp; 150</span>
        </button>
      </div>
    </div>

    <div class="row mt-4">
      <div class="col-md-8 p-3">
        <iframe
          id="ytplayer"
          type="text/html"
          width="700"
          height="360"
          src="https://www.youtube.com/embed?listType=search&list=Vikings"
          frameborder="0"
        ></iframe>
      </div>

      <div class="col-md-3 mx-4 p-4 border rounded">
        <h4>Info</h4>
        <p class="small">
          <span class="font-weight-bold">SYFY (2015 - Present)</span><br>
          <span>Network</span>
        </p>
        <p class="small">
          <span class="font-weight-bold">Wednesday at 22:00</span><br>
          <span>Schedule</span>
        </p>
        <p class="small">
          <span class="font-weight-bold">Running</span><br>
          <span>Status</span>
        </p>
        <p class="small">
          <span class="font-weight-bold">Jan 29, 2020</span><br>
          <span>Last Episode</span>
        </p>
        <p class="small">
          <span class="font-weight-bold"><a href="#">https://hbo.com/vikings</a></span><br>
          <span>Official Site</span>
        </p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
 
};
</script>

<style scoped>
.show-header-image {
  width: 200px;
}
</style>
