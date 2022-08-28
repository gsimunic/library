class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotDestroyed, with: :destroy_failed










    private

    def destroy_failed(ex)
        render json: {errors: ex.record.errors}, status: :unprocessable_entity
    end   
end
