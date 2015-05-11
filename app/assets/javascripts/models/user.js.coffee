class TwitterFrontEndEx.Models.User extends Backbone.Model

  initialize: ->
    this.urlRoot = TwitterFrontEndEx.BaseUrl + "/api/users"
    this.tweets = new TwitterFrontEndEx.Collections.Tweets()
    this.tweets.url = this.urlRoot + this.id + '/tweets'
