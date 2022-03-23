module OrdersHelper
  def find_show_by_id(id)
    ShowTime.find(id)
  end
end
