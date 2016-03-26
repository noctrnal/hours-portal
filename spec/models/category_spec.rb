require 'rails_helper'

RSpec.describe Category, :type => :model do
  describe "db structure" do
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:sheet_id).of_type(:integer) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:sheet) }
    it { is_expected.to validate_uniqueness_of(:name).scoped_to(:sheet_id) }
  end
end
