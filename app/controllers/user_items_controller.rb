class UserItemsController < ApplicationController

  before_action :logged_in_user?, only: %i[create]

  def index
    @exhibits = UserItem.order('created_at DESC').limit(9)

  end

  def create
    @item = Item.find(params[:user_item][:item_id])
    @exhibit = UserItem.new(user_item_params)
    if @exhibit.save
      flash[:success] = '出品しました'
    end
    redirect_to @item
  end

  private

  def user_item_params
    params.require(:user_item).permit(:user_id, :item_id, :price, :condition)
  end

end
