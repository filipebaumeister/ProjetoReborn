class Record < ActiveRecord::Base
  belongs_to :USER
  belongs_to :ACCOUNT
  belongs_to :CUSTOMERPROVIDER
  belongs_to :CAR
  belongs_to :PAYMENT_METHOD
end
