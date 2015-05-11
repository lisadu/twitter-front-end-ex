class TwitterFrontEndEx.Views.Index extends Backbone.View
  template: HandlebarsTemplates['index']
  events:
    'submit .user-search-form' : 'findUser'

  render: ->
    @$el.html(@template)

  findUser: (event) ->
    event.preventDefault()
    user = new TwitterFrontEndEx.Models.User(id: @.$('input[name=id]').val())
    user.fetch()