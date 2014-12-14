# Openskedge.Collections.Groups = Backbone.Collection.extend
Group = require('../models/group_model')
module.exports = Backbone.Collection.extend
  url: '/api/groups'
  model: Group


  parse: (response)->
    response.groups