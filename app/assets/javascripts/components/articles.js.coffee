@Articles = React.createClass
  getInitialState: ->
    articles:@props.data
  getDefaultProps: ->
    articles: []
  
  render: ->
    React.DOM.div
      className: 'articles'
      React.DOM.h2
        className: 'title'
        'Articles'
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Date'
            React.DOM.th null, 'Title'
            React.DOM.th null, 'Amount'
        React.DOM.tbody null,
          for article in @state.articles
            React.createElement Article, key: article.id, article: article