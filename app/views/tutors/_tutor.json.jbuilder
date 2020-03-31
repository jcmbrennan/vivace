json.extract! tutor, :id, :tutorID, :tutor_name, :tutor_desc, :tutor_category, :image_url, :created_at, :updated_at
json.url tutor_url(tutor, format: :json)
