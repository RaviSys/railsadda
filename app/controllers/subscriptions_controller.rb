class SubscriptionsController < ApplicationController

  def create
    @subscription = Subscription.new(subscription_params)
    if @subscription.save
      redirect_to request.referrer,
        flash: { success: 'Thank you for subscribing us. Please check you inbox' }
    else
      redirect_to request.referrer,
        flash: { error: 'A subscription with the same email has already been made. Please choose different one.' }
    end
  end

  private

    def subscription_params
      params.require(:subscription).permit!
    end

end
