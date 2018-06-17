module ItemsHelper
  def lowest_price item
    UserItem.where(item_id: item.id).order(price: 'desc').last
  end
end
