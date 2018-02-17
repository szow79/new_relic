require "rails_helper"

RSpec.describe CustomersController, type: :controller do
  describe "#index" do
    it "returns #{WillPaginate.per_page} users at the first page" do
      get(:index)
      expect(assigns["customers"].size).to eq WillPaginate.per_page
    end
  end

  describe "#filter" do
    it "finds users by input" do
      get(:index, :params => {:filter_name => "test"})
      expect(assigns["customers"].present?).to be true
      expect(assigns["customers"].first.first_name).to eq "test_first_name"
    end

    it "finds users by input" do
      get(:index, :params => {:filter_name => "invalid$.name*"})
      expect(assigns["customers"].present?).to be false
    end
  end
end
