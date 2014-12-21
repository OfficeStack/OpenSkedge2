OpenSkedge.Collections.Groups = Backbone.Collection.extend
  url: '/api/groups'
  model: OpenSkedge.Models.Group


  parse: (response)->
    response.groups