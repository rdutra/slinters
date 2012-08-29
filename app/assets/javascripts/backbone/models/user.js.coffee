class Slinters.Models.User extends Backbone.Model
  paramRoot: 'user'


class Slinters.Collections.UsersCollection extends Backbone.Collection
  model: Slinters.Models.User
  url: '/users'
