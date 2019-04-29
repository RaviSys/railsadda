class SubscriptionsController < ApplicationController

  def create
    @subscription = Subscription.new(subscription_params)
    if @subscription.save
      redirect_to request.referrer,
        flash: { success: 'Thank you for subscribing us. Please check you inbox' }
    end
  end

  private

    def subscription_params
      params.require(:subscription).permit!
    end

end
