class ApplicationController < ActionController::Base

  private

  def after_sign_out_path_for(resource_or_scope)
    student_session_path
  end

end
