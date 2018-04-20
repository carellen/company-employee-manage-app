module Companies
  class ManageController < AdminController

    before_action :define_company, only: [:show, :edit, :update, :destroy]

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
    end

    def edit
    end

    def update
      if @resource.update_attributes(resource_params)
        flash[:notice] = t('companies.manage.updated_message_success')
        redirect_to companies_manage_path(@resource)
      else
        flash[:alert] = t('companies.manage.updated_message_fail')
        render :edit
      end
    end

    def destroy
      @resource.destroy!
      flash[:notice] = t('companies.manage.delete_message_success')
      redirect_to companies_manage_index_path
    end

    private

    def resource_params
      params.require(:company).permit(:name, :slug)
    end

    def define_company
      @resource = Company.find_by_slug(params[:slug])
    end
  end
end
