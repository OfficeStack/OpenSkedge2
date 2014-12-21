OpenSkedge.Collections.Shifts = Backbone.Collection.extend
  url: '/api/v1/shifts'
  model: OpenSkedge.Models.Shift

  parse: (response)->
    response.shifts