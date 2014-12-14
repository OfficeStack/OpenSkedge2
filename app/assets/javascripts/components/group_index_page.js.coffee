{div, h1, p} = React.DOM
Groups = require('../collections/group_collection')
# GroupList = require('./group_list')

GroupIndexPage = React.createClass
  mixins: [Backbone.React.Component.mixin]


  render: ->
    console.log @props
    div className: 'row',
      div className: 'col-xs-12',
        h1 {}, 'Group List'
        Openskedge.Views.GroupList(collection: new Groups(@props.collection))

window.GroupIndexPage = GroupIndexPage