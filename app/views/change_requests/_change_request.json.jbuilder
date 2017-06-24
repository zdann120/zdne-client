json.extract! change_request, :id, :token, :user_id, :old_content, :new_content, :details, :urgent, :created_at, :updated_at
json.url change_request_url(change_request, format: :json)
