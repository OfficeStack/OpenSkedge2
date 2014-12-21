{a, div, h3} = React.DOM

OpenSkedge.Views.GroupList = React.createFactory React.createClass
  mixins: [Backbone.React.Component.mixin]

  render: ->
    console.log @getCollection()
    div className: 'row',
      div className: 'col-xs-12',
        @getCollection().map (group) ->
          a href: "/groups/#{group.get('id')}",
            div key: group.get('id'), className: 'panel panel-default',
              div className: 'panel-heading',
                h3 className: 'panel-title', group.get('name')
              
              div className: 'panel-body',
                group.get('description')

