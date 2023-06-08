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
    redirect_to '/top'
  end

  def index
    #@lists = List.all
  end

  def show
  end

  def edit
  end

  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
