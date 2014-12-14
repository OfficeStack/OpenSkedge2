Openskedge.Collections.Users = Backbone.Collection.extend
  url: '/api/users'
  model: Openskedge.Models.User

  parse: (response)->
    response.users