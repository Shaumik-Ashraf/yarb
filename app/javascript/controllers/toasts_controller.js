import { Controller } from "@hotwired/stimulus"
import * as bootstrap from "bootstrap"

export default class extends Controller {

  connect() {
	console.log('Toasts Controller!');
	var toastElList = [].slice.call(document.querySelectorAll('.toast'));
	var toastList = toastElList.map(function (toastEl) {
	  return new bootstrap.Toast(toastEl, option);
	});
  }

}
