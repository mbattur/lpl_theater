require "rails_helper"

RSpec.describe Order, type: :model do
  it { should belong_to(:show_time) }
  it { should belong_to(:customer) }

  it { should accept_nested_attributes_for(:customer) }

  it { is_expected.to validate_presence_of(:number_of_ticket) }
  it { is_expected.to validate_presence_of(:show_time_id) }
  it { is_expected.to validate_presence_of(:customer_id) }
end