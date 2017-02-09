Rails.application.routes.draw do
  root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/gallery'

  get 'static_pages/blog'

  
end
