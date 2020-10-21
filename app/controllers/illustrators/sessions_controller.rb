class SessionsController < ApplicationController

protected

  def reject_illustrator
    illustrator = Illustrator.find_by(email: params[:illustrator][:email].downcase)
    if illustrator
      if (illustrator.valid_password?(params[:illustrator][:password]) && (illustrator.active_for_authentication? == true))
        redirect_to new_illustrator_session_path
      end
    end
  end