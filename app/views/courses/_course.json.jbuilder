json.extract! course, :id, :name, :description, :code, :credits, :independent_study, :created_at, :updated_at
json.url course_url(course, format: :json)
