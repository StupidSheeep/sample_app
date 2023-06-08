Rails.application.routes.draw do
  get 'lists/new' #3-2 データの取得(ページ自体もデータ)
  get '/top' => 'homes#top'
  post 'lists'  => 'lists#create' #3-2(新しいデータの作成)
  get 'lists' => 'lists#index'

  get 'lists/show'
  get 'lists/edit'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
