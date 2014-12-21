#= require ../models/group_model
#= require ../collections/group_collection
#= require ../components/group_list

{div, h1, p} = React.DOM

GroupIndexPage = React.createClass
  mixins: [Backbone.React.Component.mixin]

  render: ->
    div className: 'row',
      div className: 'col-xs-12',
        h1 {}, 'Group List'
        OpenSkedge.Views.GroupList()


groups = new OpenSkedge.Collections.Groups

groups.fetch().done ->
  React.render GroupIndexPage(collection: groups), document.getElementById('group-index-page')