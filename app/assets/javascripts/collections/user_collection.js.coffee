OpenSkedge.Collections.Users = Backbone.Collection.extend
  url: '/api/v1/users'
  model: OpenSkedge.Models.User

  parse: (response)->
    response.users