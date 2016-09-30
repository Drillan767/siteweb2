class RegistrationsController < Devise::RegistrationsController
  def new
    redirect_to root_path, alert: 'Nope.'
  end

  def create
    redirect_to root_path, alert: 'Nope.'
  end
end
