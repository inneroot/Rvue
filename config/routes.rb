# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#main'
  get 'schedules/fix', to: 'schedules#fix'
  resources :schedules
  devise_for :users, controllers: { registrations: 'registrations'}
  get '/admin', to: 'admin#adminpage'
  get '/sunday_school', to: 'pages#sunday_school'
  get '/priests', to: 'pages#priests'
  get '/history', to: 'pages#history'
  get '/requisites', to: 'pages#requisites'
  get '/contacts', to: 'pages#contacts'
end