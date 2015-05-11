class TwitterFrontEndEx.Models.User extends Backbone.Model
  urlRoot: "/api/users"

  initialize: ->
    this.tweets = new TwitterFrontEndEx.Collections.Tweets()
    this.tweets.url = '/user/' + this.id + '/tweets'
