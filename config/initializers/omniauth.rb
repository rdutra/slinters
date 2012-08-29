
Rails.application.config.middleware.use OmniAuth::Builder do  
  provider :facebook, 396288267104819, 'f0a8796192b0c3b409cfd130a31eea82'
  provider :twitter, 'SwiWekwCuoMBN7Hvqmsgw', 'AV73G3TkovIOOJB4N22SpgzyjoJTqbSjCuraPKWFmu0'
end