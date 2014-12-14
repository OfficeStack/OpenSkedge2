Openskedge.Collections.Availabilities = Backbone.Collection.extend
  url: '/api/availabilities'
  model: Openskedge.Models.Availability

  parse: (response)->
    response.availabilities