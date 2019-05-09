class EnquiriesController < ApplicationController

  def create
    @enquiry = Enquiry.new(subscription_params)
    if @enquiry.save
      redirect_to request.referrer,
        flash: { success: "Your details has been forwarded to #{@enquiry.user.name}. He will be in touch with you soon."  }
    else
      redirect_to request.referrer,
        flash: { error: 'Something went wrong' }
    end
  end

  private

    def enquiry_params
      params.require(:enquiry).permit!
    end

end
