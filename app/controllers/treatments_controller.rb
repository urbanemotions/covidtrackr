class TreatmentsController < ApplicationController

    def index
         @treatments = Treatment.all
    end

    def show
    end

    def new
        @treatment = Treatment.new
    end

    def create 
        @treatment = Treatment.new(t_params)
        if @treatment.save
            redirect_to @treatment #.user?
        else
            render :new
        end
    end

    def edit
    end

    def update 
        if @treatmemt.update(t_params)
            redirect_to @treatment #.user?
        else
            render :edit 
        end
    end

    private 
    
    def get_treatment
        @treatment = Treatment.find(params[:id])
    end

    def t_params 
        params.require(:treatment).permit(:name, :ctreatment, :user_id)
        #params.require(:location).permit(:location)
    end

end
