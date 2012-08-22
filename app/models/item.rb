class Item < ActiveRecord::Base
  attr_accessible :date_assigned, :name
  belongs_to :user


  def self.types
    a = []
    self.all.each do |i|
      a << i.type.to_s.downcase.pluralize
    end
    a.uniq
  end
end
