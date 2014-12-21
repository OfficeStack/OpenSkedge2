OpenSkedge.Collections.Positions = Backbone.Collection.extend
  url: '/api/v1/positions'
  model: OpenSkedge.Models.Position

  parse: (response)->
    response.positions