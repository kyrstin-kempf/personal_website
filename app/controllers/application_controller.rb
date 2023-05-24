class ApplicationController < ActionController::API
    include ActionController::Cookies

    # Verifying cookies and sessions middleware working
    def hello_world
        session[:count] = (session[:count] || 0) + 1
        render json: { count: session[:count] }
    end

end
