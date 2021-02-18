class SymptomsController < ApplicationController
    before_action :get_symptom, only: [:show, :edit, :update, :destroy]
    before_action :set_users, only: [:new, :create, :edit, :update]

    def index
        @symptoms = Symptom.all
    end

    def show 

    end

    def new
        @symptom = Symptom.new 
        # @illnesses = Illness.all 
        # @users = User.all 
    end

    def create
        @symptom = Symptom.new(s_params)
        if @symptom.save
            redirect_to symptom_path(@symptom)
            #redirect_to @symptom_path
        else
            render :new 
        end
    end

    def edit 

    end

    def update 
        if @symptom.update(s_params)
            redirect_to @symptom
        else
            render :edit
        end

    end

    def destroy
        @symptom.destroy
        redirect_to symptom_path
    end

    private

    def get_symptom
        @symptom = Symptom.find(params[:id])
    end

    def s_params
        params.require(:symptom).permit(:name, :covid_symptoms, :user_id, :illness_id)
    end

    def set_users
        @users = User.all 
    end

    # def user_params
    #     params.require(:user).permit(:user_id, :name, :age, :sex)
    # end

end