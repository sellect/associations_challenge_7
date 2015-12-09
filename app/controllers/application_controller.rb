class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :tracking_letter
  helper_method :random_num

  def tracking_letter
    return "R"
  end

  def random_num
    rand(100000000..999999999)
  end

end
