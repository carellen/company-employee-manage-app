class InvitationsController < Devise::InvitationsController

  def create
    User.invite!(email: params[:user][:email]).companies << current_company
    respond_to do |format|
      format.html { redirect_to users_manage_employees_path, notice: t('employees.invited_message') }
      format.js
    end
  end

  private

  def current_company
    Company.find(params[:user][:company_id] ||= request.referer.split('=').last)
  end
end
