class ApplicationController < ActionController::Base
 before_action :confifure_aremitted_parameters, if: :devise_controller?

 private
 def confifure_aremitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:profile,:occupation,:position])
 end
end
