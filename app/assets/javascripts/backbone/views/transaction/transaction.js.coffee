class Slinters.Views.TransactionView extends Backbone.View
  template: JST["backbone/templates/transaction/new_transaction"]
  
  render: ->
    $('.dashboard-left').html @.template #@model.toJSON()
    $('#transaction_submit').click @.submit_transaction
    
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
        #response = JSON.parse(data.responseText)
        alert('entered successfully')
    
