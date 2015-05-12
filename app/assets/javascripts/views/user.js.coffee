class TwitterFrontEndEx.Views.User extends Backbone.View
  template: JST['user']
  el: '.user-search-result'

  render: ->
    @$el.html(@template(model: @model))
