import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="clickable-card"
export default class extends Controller {
  static values = { id: Number }
  connect() {
    console.log('Hello');
  }

  click() {
    window.open(`/requests/${this.idValue}`,"_self");
  }
}
