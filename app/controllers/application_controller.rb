class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def after_sign_in_path_for(resource)
    if resource.admin?
      admin_root_path  # Redirect to admin dashboard
    else
      root_path        # Redirect to homepage
    end
  end
end
