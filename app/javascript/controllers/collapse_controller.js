import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['content']

  connect() {
    console.log("CONNECTED")
  }

  buttonClick() {
    this.contentTarget.classList.toggle("d-none")
  }
}
