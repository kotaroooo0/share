# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :logged_in_user?, only: %i[edit update]
  before_action :correct_user?, only: %i[edit update]

  def show
    @user = User.find(params[:id])
    @exhibitions = Exhibition.where(user_id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'サインアップしました'
      log_in @user
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = 'プロフィールを編集しました'
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :grade, :university_id, :sex, :email, :image, :introduction, :password, :password_confirmation)
  end
end
