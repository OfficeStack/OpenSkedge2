Openskedge.Collections.Positions = Backbone.Collection.extend
  url: '/api/positions'
  model: Openskedge.Models.Position

  parse: (response)->
    response.positions