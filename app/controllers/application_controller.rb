class ApplicationController < ActionController::Base

  private

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    student_session_path
  end
end
