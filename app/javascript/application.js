// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
import "trix"
import "@rails/actiontext"
import Rails from "@rails/ujs"

// Rails UJS for link_to
Rails.start()

// Put bootstrap as window object
window.bootstrap = bootstrap;
