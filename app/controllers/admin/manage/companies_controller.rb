module Admin
  module Manage
    class CompaniesController < AdminController

      before_action :set_resource, only: [:show, :edit, :update, :destroy]
      before_action :create_resource, only: [:new, :create]

      def index
        @resources = Company.order(:name)
      end

      def create
        if @resource.update(resource_params)
          redirect_to admin_manage_company_path(@resource), notice: t('companies.created_message')
        else
          render :new
        end
      end

      def update
        if @resource.update(resource_params)
          redirect_to admin_manage_company_path(@resource), notice: t('companies.updated_message')
        else
          render :edit
        end
      end

      def destroy
        @resource.destroy!
        redirect_to admin_manage_companies_path, notice: t('companies.deleted_message')
      end

      private

      def resource_params
        params.require(:company).permit(:name)
      end

      def set_resource
        @resource = Company.friendly.find(params[:id])
      end

      def create_resource
        @resource = Company.new
      end

    end
  end
end
