class TimersController < ApplicationController
  def index
    @timers = Timer.all
  end

  def new
    @timers = Timer.new
  end

  def create
    Timer.create(timer_params)
    redirect_to '/'
  end

  def destroy
    timer = Timer.find(params[:id])
    timer.destroy
    redirect_to root_path
  end

  def edit
    @timer = Timer.find(params[:id])
  end

  def update
    timer = Timer.find(params[:id])
    timer.update(timer_params)
    redirect_to root_path
  end
  

  def show
    @timer = Timer.find(params[:id])
  end

  def process_time_settings
    # フォームから送信されたデータを処理するロジックをここに追加します
  end


end
