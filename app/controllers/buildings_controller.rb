class BuildingsController < ApplicationController
    def show
        @building = Building.find(params[:id])
    end

    def index
        @building = Building.all
    end

    def edit
        @building = Building.find(params[:id])
    end

    def update
        @building = Building.find(params[:id])
        @building.update(building_params)
        redirect_to @building
    end

    private 

    def building_params
    params.require(:building).permit!
    end
    
end