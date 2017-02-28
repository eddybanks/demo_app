json.extract! park_summary, :id, :park_name, :park_type, :park_service_area, :psa_manager, :email, :number, :zipcode, :acreage, :sup_dist, :parkid, :location, :lat, :created_at, :updated_at
json.url park_summary_url(park_summary, format: :json)
