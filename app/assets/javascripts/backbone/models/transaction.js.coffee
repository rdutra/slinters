class Slinters.Models.Transaction extends Backbone.Model
  
 
class Slinters.Models.Income extends Backbone.Model
  url: '/page/add_income'

class Slinters.Models.Expense extends Backbone.Model
  url: '/page/add_expense'
    
class Slinters.Collections.TransactionCollection extends Backbone.Collection
  model: Slinters.Models.Transaction
  initialize: (options) ->
    @user_id = options.user_id
  url: -> 
    '/transaction/get_by_user/'+@page