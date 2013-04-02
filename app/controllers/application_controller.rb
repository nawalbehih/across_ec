class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied!"
    redirect_to root_url
  end

  private

  def current_registrar
    @current_registrar ||= Registrar.find(session[:registrar_id]) if session[:registrar_id]
  end

  def current_student
    @current_student ||= Student.find(session[:student_id]) if session[:student_id]
  end

  def current_user
    @current_user ||= current_student || current_registrar
  end
  
  def registrar_logged_in?
    current_registrar != nil
  end
  
  def student_logged_in?
    current_student != nil
  end

  def current_ability
    if current_user.kind_of?(Registrar)
      @current_ability ||= RegistrarAbility.new(current_registrar)
    else
      @current_ability ||= StudentAbility.new(current_student)
    end
  end

  helper_method :current_registrar
  helper_method :current_student
  helper_method :current_ability
  helper_method :registrar_logged_in?
  helper_method :student_logged_in?
end
