Rails.application.routes.draw do
  get 'lists/new' #3-2 データの取得(ページ自体もデータ)
  get '/top' => 'homes#top'
  post 'lists'  => 'lists#create' #3-2(新しいデータの作成)
  get 'lists' => 'lists#index' #3-3
  #3-4 .../lists/1や...lists/3に該当する
  get 'lists/:id' => 'lists#show', as: 'list'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  patch 'lists/:id' => 'lists#update', as: 'update_list'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
