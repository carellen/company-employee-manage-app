module Companies
  class ManageController < AdminController

    def index
      @resources = Company.order(:name)
    end

    def new
      @resource = Company.new
    end

    def create
      @resource = Company.new(resource_params)

      if @resource.save
        flash[:notice] = t('companies.manage.created_message')
        redirect_to companies_manage_index_path
      else
        render :new
      end
    end

    def show
      @resource = Company.find(params[:id])
    end

    def edit
      @resource = Company.find(params[:id])
    end

    def update
      @resource = Company.find(params[:id])

      if @resource.update_attributes(resource_params)
        flash[:notice] = t('companies.manage.updated_message_success')
        redirect_to companies_manage_path(@resource)
      else
        flash[:alert] = t('companies.manage.updated_message_fail')
        render :edit
      end
    end

    def destroy
      if Company.find(params[:id]).destroy! #TODO review!
        flash[:notice] = t('companies.manage.delete_message_success')
        redirect_to companies_manage_index_path
      else
        flash[:alert] = t('companies.manage.delete_message_fail')
      end
    end

    private

    def resource_params
      params.require(:company).permit(:name, :slug)
    end
  end
end
