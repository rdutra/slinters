class Slinters.Views.ProfilePageView extends Backbone.View
  template_top: JST["backbone/templates/page/landing_top"]
  template_content: JST["backbone/templates/page/landing_content"]
  template_bottom: JST["backbone/templates/page/landing_bottom"]
  #tagName: 'div'
  #className: "menu-item"
    
  # the events hash does not work because it's called before the view has rendered :S  
  events: {
      "click #new_transact" : "render_transact"
  }
  
  render_transact: ->
    trs = new Slinters.Views.TransactionView
    trs.render()
  
  render_report: ->
    
  render: ->
    $('#top_bar').html @.template_top #@model.toJSON()
    $('#content-body').html @.template_content
    $('#bottom_bar').html @.template_bottom
    # Binding of events manually
    $('#new_transact').click @.render_transact

  