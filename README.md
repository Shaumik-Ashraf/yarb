# yarb
Yet Another Rails Blog - for me to tool around with Ruby on Rails 7.

## TODO
 - improve README doc
 - prettify
 - fix Toasts stimulus controller for bootstrap
   + make flash messages toasts
 - devise
   + g User
   + ui
 - cancan
 - comment model and pubsub queues for real time comments
 - delayed job

## Setup
 - rails 7
 - ruby 3
 - bootstrap
 - esbuild
 - sprockets
 - stimulusjs
 - hotwire turbo

## Todo Deploy
 - add `config.action\_mailer.default\_url\_options` in config/environments/production.rb
 - create new secret key for production

## Notes

### Assets Bundling
File _package.json_ should look like this for esbuild, bootstrap, turbo, and stimulus:
```json
{
  "name": "app",
  "private": "true",
  "scripts": {
    "build:css": "sass ./app/assets/stylesheets/application.bootstrap.scss ./app/assets/builds/application.css --no-source-map --load-path=node_modules",
    "build": "esbuild app/javascript/*.* --bundle --sourcemap --outdir=app/assets/builds"
  },
  "dependencies": {
    "@hotwired/stimulus": "^3.0.1",
    "@hotwired/turbo-rails": "^7.1.1",
    "@popperjs/core": "^2.11.5",
    "@rails/actiontext": "^6.1.5",
    "bootstrap": "^5.1.3",
    "bootstrap-icons": "^1.8.1",
    "esbuild": "^0.14.34",
    "sass": "^1.50.0",
    "trix": "^2.0.0-beta.0"
  }
}
```
Initial bug from `rails new ...` was fixed by running `rails css:install:bootstrap`, `rails javascript:install:esbuild`, `rails action_text:install`, `rails stimulus:install`, `rails turbo:install`, and then deleting the line `import controllers` from _application.js_.

### Adding Back Rails UJS
This is required for having `data-*` attributes in `link_to` helper.
1. yarn add @rails/ujs
2. In app/javascript/application.js add the lines:
```js
import Rails from "@rails/ujs";
Rails.start();
```
3. Recompile assets (esbuild setup): `rails assets:precompile`
  - Possible alternative for importmap: [https://stackoverflow.com/a/70769655]
