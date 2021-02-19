class UsersController < ApplicationController

    # before_action :get_user, only: [:show, :edit, :update, :destroy] 
    # before_action :user_params, only: [:new, :create, :edit, :update]

    def index
        @users = User.all 
    end

    def show
        @user = User.find(params[:id])
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

    def edit
        # @users = User.all 
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
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
