require "test_helper"

describe FilmLocationSummary do
  let(:film_location_summary) { FilmLocationSummary.new }

  it "must be valid" do
    value(film_location_summary).must_be :valid?
  end
end
