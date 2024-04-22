class TimerController < ApplicationController

  def index
    @timers = Timer.all
  end

end
