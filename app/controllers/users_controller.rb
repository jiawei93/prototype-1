class UsersController < ApplicationController

  def new
    @user = User.new
    render template: "users/new"
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      # redirect_to "home/index"
    end

    def edit
    end

    def update
    end

    def show
    end

    private
    def user_params
      params.require(:user).permit(:email, :password, :last_name, :first_name, :company_name)
    end
end
