module Users
  module Manage
    class EmployeesController < UsersController

      before_action :set_resource, only: :destroy

      def index
        @resources = Employee.where(user_id: current_user.id)
      end

      def destroy
        @resource.destroy!
        redirect_to users_manage_employees_path, notice: t('employees.deleted_message')
      end

      private

      def set_resource
        @resource = Employee.find(params[:id])
      end

    end
  end
end
