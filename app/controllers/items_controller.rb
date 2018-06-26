class ItemsController < ApplicationController

  def index
    @items = Item.paginate(page: params[:page]).order('created_at DESC')
  end

  def search
    @items = Item.where(['name LIKE ?', "%#{params[:query]}%"]).order('created_at DESC').paginate(page: params[:page])
  end

  def show
    @item = Item.find(params[:id])
    @exhibits = UserItem.where(item_id: params[:id]).order(:price).includes(:user)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:success] = "商品を出品しました"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(item_params)
      flash[:success] = '商品を更新しました'
      redirect_to @item
    else
      render 'edit'
    end
  end

  def destroy
    Item.find(params[:id]).destroy
    flash[:success] = '商品を削除しました'
    redirect_to items_url
  end

  private

  def item_params
    params.require(:item).permit(:name, :discription, :picture)
  end

end
