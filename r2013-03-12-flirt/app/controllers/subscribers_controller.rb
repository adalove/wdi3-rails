class SubscribersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.create(params[:user])
    subscriber = Subscriber.create(tagline: 'change me', bio: 'please change bio', gender: 'please change gender', age: 99)
    subscriber.user = user
  end
end