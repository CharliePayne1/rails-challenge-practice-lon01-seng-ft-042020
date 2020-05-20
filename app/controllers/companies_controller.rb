class CompaniesController < ApplicationController
    def index
        @company = Company.all
    end
    
    def new
        @company = Company.new
    end

    def create
        @company = Company.create(company_params)
        if @company.valid?
        redirect_to @company
        else
            render :new
        end 
    end

    def show
        @company = Company.find(params[:id])
    end

    def destroy
        Company.destroy(params[:id])
        redirect_to companies_path
    end    

    private 
    
    def company_params
    params.require(:company).permit!
    end

end