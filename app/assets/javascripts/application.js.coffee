GroupIndexPage = require('./components/group_index_page')

MyApp = React.createFactory React.createClass
  render: ->
    React.createElement Locations, null,
      React.createElement(Location, path: "/", handler: GroupIndexPage)


React.render(MyApp(), document.getElementById('main-container'))