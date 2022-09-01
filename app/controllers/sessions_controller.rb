class SessionsController < ApplicationController
  
    def index
      session[:pageviews_remaining] ||= 3
      render json: { session: session, cookies: cookies.to_hash }
    end
  
  end
  