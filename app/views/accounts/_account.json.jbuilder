json.extract! account, :id, :BANK, :AGENCY, :ACCOUNT_CODE, :created_at, :updated_at
json.url account_url(account, format: :json)