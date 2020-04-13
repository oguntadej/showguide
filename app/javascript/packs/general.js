export default class Showguide {
    constructor() {
        this.API_URL = window.location.origin
    }


    find_shows_url() {
        return `${this.API_URL}/shows/find/:query`
    }

    create_show_url(){
        return `${this.API_URL}/shows`
    }
}