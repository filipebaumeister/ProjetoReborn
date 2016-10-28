json.extract! invoice, :id, :DOCUMENT_NUMBER, :VALUE, :DESCOUNT, :ADDITION, :SALE_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)