class TwitterFrontEndEx.Views.Tweets extends Backbone.View
  template: JST['tweets']
  el: '.tweets-container'

  events:
    'submit .filter-tweets-form': 'findTweets'

  render: ->
    @$el.html(@template(collection: @collection))

  findTweets: (event) ->
    event.preventDefault()
    @collection.fetch(
      data: $('.filter-tweets-form').serialize()
      success: =>
        @render()
    )