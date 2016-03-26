require 'rails_helper'

RSpec.describe Hoursheet, :type => :model do
  describe "db structure" do
    it { is_expected.to have_db_column(:user_id).of_type(:integer) }
    it { is_expected.to have_db_column(:month).of_type(:integer) }
    it { is_expected.to have_db_column(:year).of_type(:integer) }
    it { is_expected.to have_db_column(:sheet_id).of_type(:integer) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:user_id) }
    it { is_expected.to validate_presence_of(:month) }
    it { is_expected.to validate_presence_of(:year) }
    it { is_expected.to validate_presence_of(:sheet_id) }
  end
end
