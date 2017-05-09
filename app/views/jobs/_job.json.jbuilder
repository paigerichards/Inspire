json.extract! job, :id, :title, :company, :description, :experience_level, :user_id, :date, :created_at, :updated_at
json.url job_url(job, format: :json)
