class ApplicationController < ActionController::Base
  protected

  def authenticate_inviter!
    super unless !request.authorization.nil?
  end
end
