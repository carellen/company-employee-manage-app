module Users
  module Manage
    class EmployeesController < UsersController

      before_action :set_resource, only: [:show, :edit, :update, :destroy]

      def index
        @resources = Employee.where(user_id: current_user.id)
      end

      def update
        if @resource.update(resource_params)
          redirect_to users_manage_employee_path, notice: t('employees.updated_message')
        else
          render :edit
        end
      end

      def destroy
        @resource.destroy!
        redirect_to users_manage_employees_path, notice: t('employees.deleted_message')
      end

      private

      def resource_params
        params.require(:employee).permit(:role)
      end

      def set_resource
        @resource = Employee.find(params[:id])
      end

    end
  end
end
