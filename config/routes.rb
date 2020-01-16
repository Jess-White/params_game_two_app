Rails.application.routes.draw do
  namespace :api do
    get '/yer_name' => 'games#yer_name'
    get '/starts_with_a' => 'games#starts_with_a'
    get '/guess_query' => 'games#guess_query'
    get '/segment_params_url/:this_is_also_a_variable' => 'params_examples#segment_params_action'
    post 'body_params_url' => 'params_examples#form_params_action'
  end 
end 


