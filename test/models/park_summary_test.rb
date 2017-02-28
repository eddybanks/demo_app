require "test_helper"

describe ParkSummary do
  let(:park_summary) { ParkSummary.new }

  it "must be valid" do
    value(park_summary).must_be :valid?
  end
end
