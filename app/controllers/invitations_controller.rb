class InvitationsController < Devise::InvitationsController

  def create
    user = User.invite!(email: params[:user][:email])
    user.companies << current_company
    user.employees.where(company: current_company).update_all(role: params[:user][:role] ||= :manager)
    respond_to do |format|
      format.html { redirect_to users_manage_employees_path, notice: t('employees.invited_message') }
      format.js
    end
  end

  private

  def current_company
    Company.find(params[:user][:company_id])
  end
end
