class Slinters.Views.ProfilePageView extends Backbone.View
  template_top: JST["backbone/templates/page/landing_top"]
  template_content: JST["backbone/templates/page/landing_content"]
  template_bottom: JST["backbone/templates/page/landing_bottom"]
  #tagName: 'div'
  #className: "menu-item"
  
  render: ->
    $('#top_bar').html @.template_top #@model.toJSON()
    $('#content-body').html @.template_content
    $('#bottom_bar').html @.template_bottom
