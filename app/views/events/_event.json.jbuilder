json.extract! event, :id, :name, :sdate, :type, :author, :info, :created_at, :updated_at
json.url event_url(event, format: :json)