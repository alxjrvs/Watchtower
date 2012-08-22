class Item < ActiveRecord::Base
  attr_accessible :date_assigned, :name
  belongs_to :user
end
