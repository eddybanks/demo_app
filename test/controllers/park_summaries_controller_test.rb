require "test_helper"

describe ParkSummariesController do
  let(:park_summary) { park_summaries :one }

  it "gets index" do
    get park_summaries_url
    value(response).must_be :success?
  end

  it "gets new" do
    get new_park_summary_url
    value(response).must_be :success?
  end

  it "creates park_summary" do
    expect {
      post park_summaries_url, params: { park_summary: { acreage: park_summary.acreage, email: park_summary.email, lat: park_summary.lat, location: park_summary.location, number: park_summary.number, park_name: park_summary.park_name, park_service_area: park_summary.park_service_area, park_type: park_summary.park_type, parkid: park_summary.parkid, psa_manager: park_summary.psa_manager, sup_dist: park_summary.sup_dist, zipcode: park_summary.zipcode } }
    }.must_change "ParkSummary.count"

    must_redirect_to park_summary_path(ParkSummary.last)
  end

  it "shows park_summary" do
    get park_summary_url(park_summary)
    value(response).must_be :success?
  end

  it "gets edit" do
    get edit_park_summary_url(park_summary)
    value(response).must_be :success?
  end

  it "updates park_summary" do
    patch park_summary_url(park_summary), params: { park_summary: { acreage: park_summary.acreage, email: park_summary.email, lat: park_summary.lat, location: park_summary.location, number: park_summary.number, park_name: park_summary.park_name, park_service_area: park_summary.park_service_area, park_type: park_summary.park_type, parkid: park_summary.parkid, psa_manager: park_summary.psa_manager, sup_dist: park_summary.sup_dist, zipcode: park_summary.zipcode } }
    must_redirect_to park_summary_path(park_summary)
  end

  it "destroys park_summary" do
    expect {
      delete park_summary_url(park_summary)
    }.must_change "ParkSummary.count", -1

    must_redirect_to park_summaries_path
  end
end
