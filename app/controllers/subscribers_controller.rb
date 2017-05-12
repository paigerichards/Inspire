class SubscribersController < ApplicationController

  before_action :authenticate_user!

  def new
    # if the person is subscribed they shouldn't be asked to subscribe again!
    if current_user.subscribed
      redirect_to profile_path(current_user)
      return
    end

  end

  def create

    token = params[:stripeToken]

    customer = Stripe::Customer.create(
      card: token,
      plan: 2314,
      email: current_user.email
    )

    current_user.subscribed = true
    current_user.stripe_id = customer.id
    current_user.save

    redirect_to posts_path

  end


end
