class RebuildCar < ActiveRecord::Base
  has_and_belongs_to_many :CAR
  has_and_belongs_to_many :REBUILD
end
