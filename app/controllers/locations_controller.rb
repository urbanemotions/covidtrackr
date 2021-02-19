class LocationsController < ApplicationController
    
    #before_action :get_location, only: [:show]
    #before_action :city_params, only: [:update]

    def index
        @locations = Location.all
        @illnesses = Illness.all
    end

    def show 
        @location = Location.find(params[:id])
        @illnesses = Illness.all
    end

    def new
        @location = Location.new 
        @illnesses = Illness.all
    end

    def create
        @location = Location.new(city_params)
        if @location.save
            redirect_to @location
        else
            render :new
        end
    end

    def edit    
    end

    def update 
        if @location.update(city_params)
            redirect_to @location
        else
            render :edit 
        end
    end

    def destroy
        @location.destroy
        redirect_to locations_path
    end

    private 

    def get_location
        @location = Location.find(params[:id])
    end

    def city_params 
        params.require(:location).permit(:name, :illness_id)
        #params.require(:location).permit(:name, :city, :user_id)
    end
    
end
