OpenSkedge.Collections.Shifts = Backbone.Collection.extend
  url: '/api/shifts'
  model: OpenSkedge.Models.Shift

  parse: (response)->
    response.shifts