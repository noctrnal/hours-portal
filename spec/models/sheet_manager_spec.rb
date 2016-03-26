require 'rails_helper'

RSpec.describe SheetManager, :type => :model do
  describe "db structure" do
    it { is_expected.to have_db_column(:sheet_id).of_type(:integer) }
    it { is_expected.to have_db_column(:year).of_type(:integer) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:sheet_id) }
    it { is_expected.to validate_presence_of(:year) }
    it { is_expected.to validate_uniqueness_of(:sheet_id).scoped_to(:year) }
  end
end
