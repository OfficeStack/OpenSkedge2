OpenSkedge.Collections.Availabilities = Backbone.Collection.extend
  url: '/api/availabilities'
  model: OpenSkedge.Models.Availability

  parse: (response)->
    response.availabilities