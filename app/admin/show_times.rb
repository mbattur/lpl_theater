ActiveAdmin.register ShowTime do
  includes :movie

  scope :all
  scope :popular

  index do       
    column :total_seats
    column :sold_seats
    column :show_date_and_time
    column :ticket_price
    column :movie_name
    column(:total_sale_per_show) { |r| number_to_currency(r.total_sale_per_show) }

    div class: "panel" do
      h3 "Total Revenue: #{collection.pluck(:sold_seats).sum}"
    end

    div class: "panel" do
      h3 "Total Revenue: #{:total_sale_per_show}"
    end
  end
end
