module SessionCounter
  extend ActiveSupport::Concern
  def session_counter
    if session[:counter].nil?
      session[:counter] = 1
    else
      session[:counter] += 1
    end
  end
end
