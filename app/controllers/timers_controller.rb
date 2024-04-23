class TimersController < ApplicationController
  def index
    @timers = Timer.all
  end

  def show
    @timer = Timer.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    # タイマーが見つからない場合の処理
    flash[:alert] = "Timer not found."
    redirect_to root_path
  end
end