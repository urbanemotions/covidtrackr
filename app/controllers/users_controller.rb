class UsersController < ApplicationController

    before_action :get_user, only: [:show, :destroy]
    before_action :user_params, only: [:create]

    def index
        @users = User.all 
    end

    def show
    end
    
    def new 
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to @user
        else
            render :new
        end
    end

    # ability to delete a user - if user changed its mind and realize they dont have any covidsymptoms 
    # def destroy
    #     @user.destroy
    #     redirect_to @user
    # end

    private

    def get_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :age, :sex)
    end
    
end
