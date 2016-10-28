class RecordFinancial < ActiveRecord::Base
  belongs_to :FINANCIAL
  belongs_to :RECORD
end
