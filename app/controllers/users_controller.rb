class UsersController < ApplicationController

    # before_action :get_user, only: [:show, :destroy]

    def index
        @users = User.all 
    end

    def show
        @user = User.find(params[:id])
    end
    
    def new 
        @user = User.new
    end

    def edit
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to @user
        else
            render :new
        end
    end

    def update
        if @user.update(user_params)
            redirect_to @user
        else
            render :edit 
        end
    end

    # ability to delete a user - if user changed its mind and realize they dont have any covidsymptoms 
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to user_path
    end

    private

    def get_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :age, :sex)
    end
    
end
