json.extract! uni_profile, :id, :uni_logo, :uni_description, :uni_galaries, :uni_log_rank, :uni_founded_date, :uni_url, :uni_email, :uni_phone1, :uni_phone2, :uni_fax, :uni_address, :created_at, :updated_at
json.url uni_profile_url(uni_profile, format: :json)
