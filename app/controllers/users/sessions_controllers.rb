class users::SessionsController < Devise::SessionsController

    respond_to :json
  
    private
  
    def respond_with(resource, _opts = {})
        render :json {
            message: "you are log in",
            user: current_user
        }, status: :ok
    end
  
    def respond_to_on_destroy
        log_out_success && return if resource.persisted?
  
        log_out_failed
    end
  
    def log_out_success
      render :json {
          message: "you are logout"
      }, status: :ok
    end

    def log_out_failed
        render :json {
            message: "something went wrong",
        }, status: :unauthorized
        
    end
  


end