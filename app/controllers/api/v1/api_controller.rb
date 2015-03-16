module Api
  module V1
    class ApiController < ApplicationController
      respond_to :json
      # before_action :authenticate_user!
      protect_from_forgery with: :null_session
      # before_filter :check_auth
    end
  end
end

