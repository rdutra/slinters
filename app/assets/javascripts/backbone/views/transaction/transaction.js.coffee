class Slinters.Views.TransactionView extends Backbone.View
  template: JST["backbone/templates/transaction/new_transaction"]
  
  render: ->
    $('.dashboard-left').html @.template #@model.toJSON()
    
    $('#rdo_expense').click @.expense_show
    $('#rdo_income').click @.income_show
    
  expense_show: ->
    $('.expense').show()
    $('.income').hide()
    
  income_show: ->
    $('.expense').hide()
    $('.income').show()