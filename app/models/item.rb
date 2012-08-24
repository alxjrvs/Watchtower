class Item < ActiveRecord::Base

  after_save :assign_date

  attr_accessible :date_assigned, :name
  belongs_to :user


  def self.types
    a = []
    self.all.each do |i|
      next if i.type == nil
      a << i.type.to_s.downcase.pluralize
    end
    a.uniq
  end

  private

  def assign_date
    if self.user
      self.update_attributes(:date_assigned => Time.now) unless self.date_assigned
    end
  end
end
