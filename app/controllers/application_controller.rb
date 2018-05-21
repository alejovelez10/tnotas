class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception



layout :layout_for_selection
protected
  def layout_for_selection
    if controller_name == 'sessions'  || controller_name == 'passwords' || controller_name == 'home' 
      'application'
    elsif controller_name == 'registrations'

        if action_name == "new" || action_name == "create"
            'application'
            else
            	'admin'
        end
    	else
      'admin'
    end
  end

  protected
  def after_sign_in_path_for(resource)
 
    if user_signed_in?
      products_path
    else
      root_path
    end

  end
end 
