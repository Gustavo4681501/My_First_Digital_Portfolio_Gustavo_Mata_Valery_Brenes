json.extract! project, :id, :name, :description, :start_date, :finish_date, :responsibilities, :url, :created_at, :updated_at
json.url project_url(project, format: :json)
