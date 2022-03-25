require "rails_helper"

RSpec.describe ShowTime, type: :model do
  it { should belong_to(:movie) }
  it { should have_many(:orders) }

  it { should accept_nested_attributes_for(:orders) }

  describe ".movie_name" do
    let(:movie_name) { "Moonlight" }
    let(:movie) { build(:movie, name: movie_name) }
    let(:show_time) { build(:show_time, movie: movie) }

    it "returns the showtime movie name" do
      expect(show_time.movie_name).to eq(movie_name)
    end
  end

  describe ".total_sale_per_show" do
    let(:show_time) { build(:show_time, ticket_price: 20, sold_seats: 10) }

    it "returns the showtime total sale" do
      expect(show_time.total_sale_per_show).to eq(200)
    end
  end

  describe ".available_seats" do
    let(:show_time) { build(:show_time, total_seats: 20, sold_seats: 10) }

    it "returns the showtime available seats" do
      expect(show_time.available_seats).to eq(10)
    end
  end
end