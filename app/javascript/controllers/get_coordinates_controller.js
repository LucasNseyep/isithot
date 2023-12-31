import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="get-coordinates"
export default class extends Controller {
  static targets = ["latitude", "longitude"]

  connect() {
    navigator.geolocation.getCurrentPosition((position) => {
      this.latitudeTarget.value = position.coords.latitude
      this.longitudeTarget.value = position.coords.longitude
    });
  }
}
