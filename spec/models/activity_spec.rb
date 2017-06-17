require "rails_helper"

RSpec.describe Activity do
  describe "associations" do
    it { is_expected.to belong_to :user }
    it { is_expected.to belong_to :subject }
  end
end
