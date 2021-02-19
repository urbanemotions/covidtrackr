class TreatmentsController < ApplicationController

    before_action :get_treatment, only: [:show, :edit, :update, :destroy] 

    def index
         @treatments = Treatment.all
         @illnesses = Illness.all
    end

    def show
        @illnesses = Illness.all
    end

    def new
        @treatment = Treatment.new
        @illnesses = Illness.all
    end

    def create 
        @treatment = Treatment.new(t_params)
        if @treatment.save
            redirect_to treatments_path
        else
            render :new
        end
    end

    def edit
    end

    def update 
        if @treatment.update(t_params)
            redirect_to @treatment
        else
            render :edit 
        end
    end

    def destroy
        @treatment.destroy
        redirect_to treatments_path
    end

    private 
    
    def get_treatment
        @treatment = Treatment.find(params[:id])
    end

    def t_params 
        params.require(:treatment).permit(:name, :illness_id)
    end

end