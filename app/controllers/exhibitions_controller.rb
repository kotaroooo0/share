# frozen_string_literal: true

class ExhibitionsController < ApplicationController
  before_action :logged_in_user?, only: %i[new create edit update destroy]

  def index
    @exhibitions = Exhibition.order('created_at DESC').limit(9).includes(:user)
  end

  def search
    @exhibitions = Exhibition.where(['name LIKE ?', "%#{params[:query]}%"]).order('created_at DESC').paginate(page: params[:page])
  end

  def show
    @exhibition = Exhibition.find(params[:id])
  end

  def new
    @exhibition = Exhibition.new
  end

  def create
    @exhibition = Exhibition.new(exhibition_params)
    flash[:success] = '出品しました' if @exhibition.save
    redirect_to root_path
  end

  def edit
    @exhibition = Exhibition.find(params[:id])
  end

  def update
    @exhibition = Exhibition.find(params[:id])
    if @exhibition.update_attributes(exhibition_params)
      flash[:success] = '出品を更新しました'
      redirect_to @exhibition
    else
      render 'edit'
    end
  end

  def destroy
    Exhibition.find(params[:id]).destroy
    flash[:success] = '商品を削除しました'
    redirect_to root_path
  end

  private

  def exhibition_params
    params.require(:exhibition).permit(:name, :user_id, :price, :lecture, :condition, :discribe, :sellout)
  end
end
