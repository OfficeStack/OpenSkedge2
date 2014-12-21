OpenSkedge.Collections.Positions = Backbone.Collection.extend
  url: '/api/positions'
  model: OpenSkedge.Models.Position

  parse: (response)->
    response.positions