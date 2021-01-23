class ApplicationController < ActionController::Base

  private

  def after_sign_out_path_for(resource_or_scope)
    student_session_path
  end

  def after_sign_up_path_for(resource)
    # your path
  end
end
