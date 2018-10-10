# frozen_string_literal: true

class TradesController < ApplicationController
  def show
    redirect_to root_path
  end

  def create
    @trade = trade.create(trade_params)
    if @trade.save
      flash[:success] = '取引を開始します'
      redirect_to @trade
    else
      flash[:danger] = '取引を開始できませんでした'
      redirect_to Exhibition.find(trade_params[:exhibition_id])
    end
  end

  def destroy
    trade.find_by(trade_params).destroy
    render current_user
  end

  private

  def trade_params
    params.require(:trade).permit(:user_id, :exhibition_id)
  end
end
