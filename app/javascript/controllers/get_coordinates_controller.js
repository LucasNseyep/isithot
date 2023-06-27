import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="get-coordinates"
export default class extends Controller {
  connect() {
    navigator.geolocation.getCurrentPosition((data) => {
      console.log(data)
      console.log(data.coords.latitude)
    })
  }
}
