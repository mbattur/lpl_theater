ActiveAdmin.register ShowTime do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :total_seats, :sold_seats, :show_date_and_time, :ticket_price, :movie_id
  #
  includes :movie
  # or
  #
  # permit_params do
  #   permitted = [:total_seats, :sold_seats, :show_date_and_time, :ticket_price, :movie_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
