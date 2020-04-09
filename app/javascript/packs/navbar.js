import TurbolinksAdapter from 'vue-turbolinks'
import Vue from 'vue/dist/vue.esm'


Vue.use(TurbolinksAdapter)
import navbar from '../components/navbar-component.vue'

document.addEventListener('turbolinks:load', () => {
    const app = new Vue({
        el: '#navbar',
        components: { navbar }
    })
})
