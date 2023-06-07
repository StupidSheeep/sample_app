Rails.application.routes.draw do
  get 'lists/new' #データの取得(ページ自体もデータ)
  post 'lists'  => 'lists#create' #(新しいデータの作成)


  get 'lists/new'
  get 'lists/index'
  get 'lists/show'
  get 'lists/edit'
  get '/top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
