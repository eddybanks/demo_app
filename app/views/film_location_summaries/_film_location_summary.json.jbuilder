json.extract! film_location_summary, :id, :title, :release_year, :locations, :fun_facts, :production_company, :distributor, :director, :writer, :actor1, :actor2, :actor3, :created_at, :updated_at
json.url film_location_summary_url(film_location_summary, format: :json)
