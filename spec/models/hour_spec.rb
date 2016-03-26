require 'rails_helper'

RSpec.describe Hour, :type => :model do
  describe "db structure" do
    it { is_expected.to have_db_column(:hoursheet_id).of_type(:integer) }
    it { is_expected.to have_db_column(:item_id).of_type(:integer) }
    it { is_expected.to have_db_column(:value).of_type(:integer) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:hoursheet) }
    it { is_expected.to validate_presence_of(:item) }
    it { is_expected.to validate_presence_of(:value) }
  end
end
