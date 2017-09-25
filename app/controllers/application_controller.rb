class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :token_authenticate

  protected

  def token_authenticate
    authenticate_or_request_with_http_token do |token, options|
      User.where(active: true, api_key: token).where("expired_at > ?", Time.now).present?
    end
  end
end
