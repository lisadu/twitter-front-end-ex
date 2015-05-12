class TwitterFrontEndEx.Views.Index extends Backbone.View
  template: JST['index']
  events:
    'submit .user-search-form' : 'findUser'

  render: ->
    @$el.html(@template)

  findUser: (event) ->
    event.preventDefault()
    user = new TwitterFrontEndEx.Models.User(id: @.$('input[name=id]').val())
    user.fetch(
      success: ->
        userView = new TwitterFrontEndEx.Views.User(model: user)
        @.$('.user-search-result').html(userView.el)
        userView.render()
    )