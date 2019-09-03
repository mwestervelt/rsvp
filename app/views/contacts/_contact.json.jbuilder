json.extract! contact, :id, :name, :email, :with_guest, :guest_name, :attending, :song_request, :created_at, :updated_at
json.url contact_url(contact, format: :json)
