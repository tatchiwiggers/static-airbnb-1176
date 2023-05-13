Rails.application.routes.draw do
# index
  #URI/PATTERN           #controller#method
  root to: 'flats#index'
  get '/flats/:id', to: 'flats#show', as: :flat
end

# SHOW -> http://127.0.0.1:3000/flats/1




# 7 CRUD ACTIONS
# INDEX -> display All
# SHOW -> display one (needs ID)
# NEW -> creates new
# CREATE -> creates 
# EDIT -> edits
# UPDATE - > updates
# DESTROY -> deletes 