class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def head_ok
    head :ok
  end
end
