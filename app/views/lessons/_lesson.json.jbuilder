json.extract! lesson, :id, :lessonID, :lesson_title, :lesson_desc, :lesson_price, :image_url, :lesson_category, :lesson_level, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
