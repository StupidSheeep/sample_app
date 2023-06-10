class ListsController < ApplicationController
  def new
    # 3-2 Viewへ渡すためのイン寸タンス変数に空のModelオブジェクトを生成
    @list = List.new
  end

  #3-2 以下を追加
  def create
    @list = List.new(list_params) #3-8 更新
    if @list.save
      redirect_to list_path(@list.id)
    else
      @lists = List.all
      render :index #<= new から indexに変更
    end
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

  def update #3-5
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)
  end

  def destroy #3-7
    list = List.find(params[:id]) #データ(レコード)を１件取得
    list.destroy #データ(レコード)を削除
    redirect_to '/lists' #投稿一覧画面へリダイレクト
  end

  private
  #3-2 ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end
end
