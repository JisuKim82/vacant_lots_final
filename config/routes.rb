Rails.application.routes.draw do

get '/welcome' => 'lots#welcome'
get '/search' => 'lots#search'
get '/borough' => 'lots#results', as:'results'

root :to => "lots#welcome"
end
