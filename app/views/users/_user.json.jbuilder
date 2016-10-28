json.extract! user, :id, :NAME, :EMAIL, :PASSWORD, :PERFIL_id, :created_at, :updated_at
json.url user_url(user, format: :json)