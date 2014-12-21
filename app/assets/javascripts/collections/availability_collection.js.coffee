OpenSkedge.Collections.Availabilities = Backbone.Collection.extend
  url: '/api/v1/availabilities'
  model: OpenSkedge.Models.Availability

  parse: (response)->
    response.availabilities