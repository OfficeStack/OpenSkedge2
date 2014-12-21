OpenSkedge.Collections.Users = Backbone.Collection.extend
  url: '/api/users'
  model: OpenSkedge.Models.User

  parse: (response)->
    response.users