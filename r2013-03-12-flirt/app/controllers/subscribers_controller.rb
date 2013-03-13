class SubscribersController < ApplicationController
  def index
  end

  def new
    @subscriber = Subscriber.new
  end

  def create
    Subscriber.create(params[:subscriber])
  end
end
