{div, h1, p} = React.DOM

Openskedge.Views.GroupShowPage = React.createFactory React.createClass
  mixins: [Backbone.React.Component.mixin]

  render: ->
    div className: 'row',
      div className: 'col-xs-12',
        h1 {}, 'Group show page'


# $(document).on "page:change", ->
#   if document.getElementById('group-show-page')
#     group = new Openskedge.Models.Group(id: 1)

#     group.fetch().done ->
#       React.render GroupShowPage(model: group), document.getElementById('group-show-page')