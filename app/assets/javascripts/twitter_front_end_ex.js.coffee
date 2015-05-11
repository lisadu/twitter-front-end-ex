
window.TwitterFrontEndEx =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  BaseUrl: null
  initialize: ->
    TwitterFrontEndEx.BaseUrl = $('.backend-url').data('backend-url')
    view = new TwitterFrontEndEx.Views.Index()
    $('body').html(view.el)
    view.render()

$(document).ready ->
  TwitterFrontEndEx.initialize()
