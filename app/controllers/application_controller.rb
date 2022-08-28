class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound, with: :destroy_failed










    private

    def destroy_failed(ex)
        render json: {error:"Nothing to delete, user not found"}, status: :unprocessable_entity
    end   
end
