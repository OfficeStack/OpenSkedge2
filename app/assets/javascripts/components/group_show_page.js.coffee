{div, h1, p} = React.DOM

OpenSkedge.Views.GroupShowPage = React.createFactory React.createClass
  mixins: [Backbone.React.Component.mixin]

  render: ->
    div className: 'row',
      div className: 'col-xs-12',
        h1 {}, 'Group show page'