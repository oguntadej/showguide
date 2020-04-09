import TurbolinksAdapter from 'vue-turbolinks'
import Vue from 'vue/dist/vue.esm'


Vue.use(TurbolinksAdapter)
import show from '../../components/show-item.vue'
import navbar from '../../components/navbar-component.vue'

document.addEventListener('turbolinks:load', () => {
    const app = new Vue({
        el: '#show',
        components: { show }
    })
})
