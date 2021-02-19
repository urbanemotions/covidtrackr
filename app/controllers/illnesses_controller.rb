class IllnessesController < ApplicationController

    before_action :find_illness, only: [:show, :destroy]
    
    def index
        @illnesses = Illness.all
    end

    def new
        @illness = Illness.new 
    end
    
    def show        
    end
    
    def create 
        @illness = Illness.new(illness_params)
        if @illness.save
            redirect_to @illness
        else
            render :new
        end
    end
    
# if the user input the wrong thing, allow them to delete it
    def destroy 
        @illness.destroy 
        redirect_to @illness
    end

    private
    
    def illness_params
        params.require(:illness).permit(:name, :user_id, :illness_id)
    end

    def find_illness 
        @illness = Illness.find(params[:id])
    end
    
end