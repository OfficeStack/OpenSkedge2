Openskedge.Collections.Shifts = Backbone.Collection.extend
  url: '/api/shifts'
  model: Openskedge.Models.Shift

  parse: (response)->
    response.shifts