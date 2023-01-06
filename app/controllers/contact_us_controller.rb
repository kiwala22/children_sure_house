class ContactUsController < ApplicationController
  def index; end

  def new
    @contact = ContactUs.new
  end

  def create
    @contact = ContactUs.new(params[:contact_us])

    if @contact.save
      @contact.deliver
      flash[:notice] = 'Your inquiry has been sent and we will be in touch as soon as possible. Thank you!'
      redirect_to action: :index
    else
      flash[:alert] = 'Your inquiry has not been sent Thank you!'
      render :index
    end
  end
end
