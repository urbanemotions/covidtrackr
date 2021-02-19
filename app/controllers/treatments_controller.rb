class TreatmentsController < ApplicationController

    def index
         @treatments = Treatment.all
    end

    def show
    end

    def new
        @treatment = Treatment.new
        # @treatments = [{name: “Self care”}, {name: “medical care”}]
        @illnesses = Illness.all
    end

    def create 
        @treatment = Treatment.new(t_params)
        if @treatment.save
            redirect_to @treatment
        else
            render :new
        end
    end

    def edit
    end

    def update 
        if @treatmemt.update(t_params)
            redirect_to @treatment
        else
            render :edit 
        end
    end

    private 
    
    def get_treatment
        @treatment = Treatment.find(params[:id])
    end

    def t_params 
        params.require(:treatment).permit(:name, :illness_id)
    end

end
