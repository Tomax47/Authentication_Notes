json.extract! note, :id, :title, :body, :author, :creation_date, :created_at, :updated_at
json.url note_url(note, format: :json)
