require "test_helper"

describe FilmLocationSummariesController do
  let(:film_location_summary) { film_location_summaries :one }

  it "gets index" do
    get film_location_summaries_url
    value(response).must_be :success?
  end

  it "gets new" do
    get new_film_location_summary_url
    value(response).must_be :success?
  end

  it "creates film_location_summary" do
    expect {
      post film_location_summaries_url, params: { film_location_summary: { actor1: film_location_summary.actor1, actor2: film_location_summary.actor2, actor3: film_location_summary.actor3, director: film_location_summary.director, distributor: film_location_summary.distributor, fun_facts: film_location_summary.fun_facts, locations: film_location_summary.locations, production_company: film_location_summary.production_company, release_year: film_location_summary.release_year, title: film_location_summary.title, writer: film_location_summary.writer } }
    }.must_change "FilmLocationSummary.count"

    must_redirect_to film_location_summary_path(FilmLocationSummary.last)
  end

  it "shows film_location_summary" do
    get film_location_summary_url(film_location_summary)
    value(response).must_be :success?
  end

  it "gets edit" do
    get edit_film_location_summary_url(film_location_summary)
    value(response).must_be :success?
  end

  it "updates film_location_summary" do
    patch film_location_summary_url(film_location_summary), params: { film_location_summary: { actor1: film_location_summary.actor1, actor2: film_location_summary.actor2, actor3: film_location_summary.actor3, director: film_location_summary.director, distributor: film_location_summary.distributor, fun_facts: film_location_summary.fun_facts, locations: film_location_summary.locations, production_company: film_location_summary.production_company, release_year: film_location_summary.release_year, title: film_location_summary.title, writer: film_location_summary.writer } }
    must_redirect_to film_location_summary_path(film_location_summary)
  end

  it "destroys film_location_summary" do
    expect {
      delete film_location_summary_url(film_location_summary)
    }.must_change "FilmLocationSummary.count", -1

    must_redirect_to film_location_summaries_path
  end
end
