OpenSkedge.Collections.Groups = Backbone.Collection.extend
  url: '/api/v1/groups'
  model: OpenSkedge.Models.Group


  parse: (response)->
    response.groups