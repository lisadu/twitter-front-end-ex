class TwitterFrontEndEx.Views.User extends Backbone.View
  template: JST['user']
  el: '.user-search-result'

  render: ->
    @$el.html(@template(model: @model))
    @model.tweets.fetch(
      success: =>
        tweetsView = new TwitterFrontEndEx.Views.Tweets(collection: @model.tweets)
        tweetsView.render()
    )

