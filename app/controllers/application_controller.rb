class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_i18n_locale_from_params

  protected

  def set_i18n_locale_from_params
      if params[:locale]
        if I18n.available_locales.include?(params[:locale].to_sym)
          I18n.locale = params[:locale]
        else
          flash.now[:notice] =
            "#{params[:locale]} translation not available"
          logger.error flash.now[:notice]
        end
      end
    end

  def default_url_options
      { locale: I18n.locale }
  end

  def require_admin
    redirect_to root_path, :alert => "Access Denied, You are not an Admin user." unless current_user.admin?
  end

end
