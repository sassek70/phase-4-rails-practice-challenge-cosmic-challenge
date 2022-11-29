class ApplicationController < ActionController::API

    rescue_from ActiveRecord::RecordNotFound, with: :not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response



    def not_found(error)
        render json: {errors: ["Scientist Not Found"]}, status: :not_found
    end
    
  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors }, status: :unprocessable_entity
  end
end
