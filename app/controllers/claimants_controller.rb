class ClaimantsController < ApplicationController
  def new
    @claimant = Claimant.new
  end
  def create
    @claimant = Claimant.new(claimant_params)
    if @claimant.save
      flash[:success] = 'Message sent.'
      redirect_to new_claimant_path, notice: "Message sent."
    else
      flash[:danger] = 'Error occured, message has not been sent.'
      redirect_to new_claimant_path, notice: "Error occured."
    end
  end
  
  private
    def claimant_params
      params.require(:claimant).permit(:name, :email, :comments)
    end
end
