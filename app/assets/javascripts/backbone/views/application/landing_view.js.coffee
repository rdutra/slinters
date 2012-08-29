class Slinters.Views.LandingPageView extends Backbone.View
  template_top: JST["backbone/templates/application/landing_top"]
  template_content: JST["backbone/templates/application/landing_content"]
  template_bottom: JST["backbone/templates/application/landing_bottom"]
  #tagName: 'div'
  #className: "menu-item"
  
  render: ->
    $('#top_bar').html @.template_top #@model.toJSON()
    $('#content-body').html @.template_content
    $('#bottom_bar').html @.template_bottom
