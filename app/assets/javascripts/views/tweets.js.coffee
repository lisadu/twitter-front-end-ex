class TwitterFrontEndEx.Views.Tweets extends Backbone.View
  template: JST['tweets']
  el: '.tweets-container'

  events:
    'submit .filter-tweets-form': 'findTweets'

  render: ->
    console.log(@collection)
    @$el.html(@template(collection: @collection))

  findTweets: =>
    debugger
    @data = $('.filter-tweets-form').data()
    @collection.set(with_picture: true)
    @collection.fetch(
      success: ->
        @render()
    )