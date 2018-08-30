class TransactionsController < ApplicationController


  def show
    redirect_to root_path
  end

  def create
    @transaction = Transaction.create(transaction_params)
    if @transaction.save
      flash[:success] = '取引を開始します'
      redirect_to @transaction
    else
      flash[:danger] = '取引を開始できませんでした'
      redirect_to Exhibition.find(transaction_params[:echibition_id])
    end
  end

  def destroy
    Transaction.find_by(transaction_params).destroy
    render current_user
  end

  private

  def transaction_params
    params.require(:transaction).permit(:user_id, :exhibition_id)
  end
end
