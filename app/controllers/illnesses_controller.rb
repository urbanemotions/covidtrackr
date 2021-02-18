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
            redirect_to @illness.user
        else
            render :new
        end
    end
# if the user input the wrong thing, allow them to delete it
    def destroy 
        @illness.destroy 
        redirect_to @illness.user
    end
# i am confusing myself... 
# when symptoms are selected in the drop down menu, then 
    def covid?
        case x
        when @symptom != nil    
            "true"
        else 
            "false"
        end
        # if symptom is = covid then illness of covid is true 
        # come back
    end

    private
    def illness_params
        params.require(:illness).permit(:covid, :user_id, :illness_id)
    end

    def find_illness 
        @illness = Illness.find(params[:id])
    end

end