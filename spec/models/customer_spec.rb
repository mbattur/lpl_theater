require "rails_helper"

RSpec.describe Customer, type: :model do
  it { should have_many(:orders) }

  it { is_expected.to validate_presence_of(:first_name) }
  it { is_expected.to validate_presence_of(:last_name) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:credit_card_number) }
  it { is_expected.to validate_presence_of(:expiration_date) }

  it { should validate_length_of(:credit_card_number).is_at_least(13).is_at_most(19) }
  it { should validate_numericality_of(:credit_card_number).only_integer }
  it { should allow_value('john.doe@example.com', 'alice@yahoo.ca').for(:email) }
  it { should_not allow_value('john2example.com', 'john@examplecom').for(:email) }

  describe ".full_name" do
    let(:customer) { build(:customer, first_name: "Elon", last_name: "Musk") }

    it "returns the customer full name" do
      expect(customer.full_name).to eq("Elon Musk")
    end
  end
end