Bahai2::Application.routes.draw do
  resources :minutes do
    resources :entries, except: :index
  end
  # resources :minutes
  resources :entries, except: :index
  # get 'minutes/:id/entries/new'       => 'entries#new', as: :new_entry
  # get 'minutes/:id/entries/:entry_id' => 'entries#show', as: :entry
  # get 'minutes/:minute_id/entries/'          => 'entries#index', as: :entries
  # post 'minutes/:id/entries/'          => 'entries#update', via: :post, as: :entries

  root 'minutes#index'
  get 'configurations' => 'application#configurations', as: :configurations

  put    'save_ael_via_ajax'   => 'aels#save',           as: :save_ael
  delete 'delete_ael_via_ajax' => 'aels#delete',         as: :delete_ael
  put    'set_active_ael'      => 'aels#set_active_ael', as: :set_active_ael
end
