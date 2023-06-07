class ListsController < ApplicationController
  def new
    # Viewへ渡すためのイン寸タンス変数に空のModelオブジェクトを生成
    @list = List.new
  end

  def index
  end

  def show
  end

  def edit
  end
end
