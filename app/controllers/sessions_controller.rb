class SessionsController < ApplicationController
  def new
  end

  def create
    if bank = Bank.find_by_user_name(params[:user_name])
      session[:bank_id] = bank.id
      redirect_to bank
    else
      redirect_to login_url, :alert => "Invalid Bank name"
    end
  end

  def destroy
  end

end
