class LocationsController < ApplicationController
    
    #before_action :get_location, only: [:show]
    #before_action :city_params, only: [:update]

    def index
        @locations = Location.all
    end

    def show 
    end

    def new
        @citylocation = Location.new 
    end

    def create
        @citylocation = Location.new(city_params)
        if @citylocation.save
            redirect_to @citylocation #.user?
        else
            render :new
        end
    end

    def edit    

    end

    def update 
        if @citylocation.update(city_params)
            redirect_to @citylocation #.user?
        else
            render :edit 
        end
    end

    def destroy
        @citylocation.destroy
        redirect_to citylocations_path
    end

    private 

    def get_location
        @citylocation = Location.find(params[:id])
    end

    def city_params 
        params.require(:location).permit(:citylocation, :city, :user_id)
        #params.require(:location).permit(:location)
    end
end
