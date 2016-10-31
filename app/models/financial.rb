class Financial < ActiveRecord::Base
  belongs_to :CUSTOMERPROVIDER
  belongs_to :BANK
  belongs_to :RECORD
end
