class ListsController < ApplicationController
  def new
    # 3-2 Viewへ渡すためのイン寸タンス変数に空のModelオブジェクトを生成
    @list = List.new
  end

  #3-2 以下を追加
  def create
    #3-2 1.&2. データを受け取り新規登録するためのインスタンス作成
    list = List.new(list_params)
    #3-2 3. データをデータベースに保存するためのsaveメソッド実行
    list.save
    #3-2 4. トップ画面へリダイレクト
    redirect_to list_path(list.id)
  end

  def index
    @lists = List.all #3-3
  end

  def show
    @list = List.find(params[:id]) #3-4
  end

  def edit
    @list =List.find(params[:id]) #3-5
  end

  private
  #3-2 ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
