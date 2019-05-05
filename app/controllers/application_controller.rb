class ApplicationController < ActionController::Base
  # Перенаправления после входа
  def after_sign_in_path_for(resource)
    current_user_path
  end
  # Перенаправления после выхода, после выхода пользовательостанется
  # на той же странице
  def after_sign_out_path_for(resource_or_scope)
    request.referrer
  end

end
