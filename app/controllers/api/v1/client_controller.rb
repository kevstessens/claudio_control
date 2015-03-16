module Api
  module V1
    class ClientController < Api::V1::ApiController
      respond_to :json

      def index
        @clients = Client.all
        respond_with @clients
      end

      def show
        @client = Client.find(params[:id])
        respond_with @client
      end



    end
  end
end