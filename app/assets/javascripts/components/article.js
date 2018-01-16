@Article = React.createClass
render: ->
  React.DOM.tr null,
    React.DOM.td null,@props.article.date 
    React.DOM.td null,@props.article.title
    React.DOM.td null,amountFormat(@props.article.amount);