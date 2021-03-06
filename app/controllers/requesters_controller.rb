class RequestersController < ApplicationController
  def new
    @requester = Requester.new
  end
  def create
    @requester = Requester.new(requester_params)
    if @requester.save
      name = params[:requester][:name]
      email = params[:requester][:email]
      body = params[:requester][:comments]
      RequesterMailer.requester_email(name, email, body).deliver
      flash[:success] = 'Message sent.'
      redirect_to new_requester_path, notice: "Message sent."
    else
      flash[:danger] = 'Error occured, message has not been sent.'
      redirect_to new_requester_path, notice: "Error occured."
    end
  end
  
  private
    def requester_params
      params.require(:requester).permit(:name, :email, :comments)
    end
end