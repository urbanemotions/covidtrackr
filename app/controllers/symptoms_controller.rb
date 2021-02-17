class SymptomsController < ApplicationController
    before_action :get_symptom, only: [:show]

    def new
        @symptom = Symptom.new 
        @illnesses = Illness.all 
        @users = User.all 
    end

    def create
        @symptom = Symptom.new(s_params)
        if @symptom.save
            redirect_to @symptom_path
        else
            render :new 
        end
    end

    def edit 

    end

    def update 

    end

    def destroy

    end


    def show 

    end


    private

    # def user_params
    #     params.require(:user).permit(:user_id, :name, :age, :sex)
    # end

    def get_symptom
        @symptom = Symptom.find(params[:id])
    end

    def s_params
        params.require(:symptom).permit(:symptom, :user_id, :illness_id)
    end

end