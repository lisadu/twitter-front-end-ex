
window.TwitterFrontEndEx =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    view = new TwitterFrontEndEx.Views.Index()
    $('body').html(view.el)
    view.render()

$(document).ready ->
  TwitterFrontEndEx.initialize()
