# config/initializers/jsroutes.rb

# https://github.com/railsware/js-routes#advanced-setup
JsRoutes.setup do |config|
  config.include = [
    /^upvote_product$/
  ]
end