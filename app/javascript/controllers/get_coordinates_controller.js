import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="get-coordinates"
export default class extends Controller {
  static targets = ["latitude", "longitude"]

  connect() {
    console.log("Hello from get coordinates controller!")
  }

  get(){
    navigator.geolocation.getCurrentPosition((data) => {
      console.log(data)
    })
  }
}
