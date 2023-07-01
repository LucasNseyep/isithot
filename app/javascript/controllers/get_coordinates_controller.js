import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="get-coordinates"
export default class extends Controller {
  static targets = ["latitude", "longitude"]

  getLatitude(position) {
    return position.coords.latitude
  }

  connect() {
    navigator.geolocation.getCurrentPosition((position) => {
      this.latitudeTarget.value = position.coords.latitude
      this.longitudeTarget.value = position.coords.longitude
    });
  }

  // getLatitude(position) {
  //   return position.coords.latitude
  // }

  // fillLatitude() {
  //   navigator.geolocation.getCurrentPosition((position) => {
  //     this.latitudeTarget.value = position.coords.latitude
  //   });
  // }

  // fillLongitude() {
  //   navigator.geolocation.getCurrentPosition((position) => {
  //     this.longitudeTarget.value = position.coords.longitude
  //   });
  // }
}
