class Slinters.Views.TransactionView extends Backbone.View
  template: JST["backbone/templates/transaction/new_transaction"]
  
  render: ->
    $('.dashboard_single').html ''
    $('.dashboard-left').html @.template #@model.toJSON()
    $('#transaction_submit').click @.submit_transaction
    
    $("input#txt_payee_exp").autocomplete 
      source: (request, response) ->
        $.ajax
          type: "POST"
          url: "/entity/search_entity"
          dataType: "json"
          data:
            searchstring: request.term
            #authenticity_token: $('#auth_token').val()
          success: (data) ->
            response data
    
  submit_transaction: ->
    switch $("input[name='type-select']:checked").val()
      when "expense"
        expense = new Slinters.Models.Expense({
          date:$('#txt_date_exp').val(),
          amount: $('#txt_amount_exp').val(),
          concept: $('#txt_concept_exp').val(),
          entity: $('#txt_payee_exp').val(),
          description: " Description "})
        expense.save()
      when "income"
        income = new Slinters.Models.Income({
          date:$('#txt_date_exp').val(),
          amount: $('#txt_amount_exp').val(),
          concept: $('#txt_concept_exp').val(),
          entity: $('#txt_payee_exp').val(),
          description: " Description "})
        income.save()
      else
        alert("you need to specify a transaction type")
        
class Slinters.Views.TransactionItemView extends Backbone.View
  template: JST["backbone/templates/transaction/transaction_list_row_big"]
  
  render: ->
    
  
class Slinters.Views.TransactionListView extends Backbone.View
  template: JST["backbone/templates/transaction/transaction_list_big"]
  
  render: ->
      $('.dashboard_single').html @.template
      $('.dashboard-left').html ''
      $('.dashboard-right').html ''
