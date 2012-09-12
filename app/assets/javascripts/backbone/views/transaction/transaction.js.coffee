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
    view = new Slinters.Views.TransactionView
    switch $("input[name='type-select']:checked").val()
      when "expense"
        view.create_transaction "expense"
      when "income"
        view.create_transaction "income"
      else
        alert("you need to specify a transaction type")
        
  create_transaction: (type) ->
    $.ajax
      type: "POST"
      url: "/page/add_" + type
      data:
        #authenticity_token: $('#auth_token').val()
        date: $('#txt_date_exp').val()
        amount: $('#txt_amount_exp').val()
        concept: $('#txt_concept_exp').val()
        entity: $('#txt_payee_exp').val()        
        description: " Description "
      success: (data) ->
        response = eval(data)
        alert('entered successfully')
    
class Slinters.Views.TransactionListView extends Backbone.View
  template: JST["backbone/templates/transaction/transaction_list_big"]
  
  render: ->
      $('.dashboard_single').html @.template
      $('.dashboard-left').html ''
      $('.dashboard-right').html ''
