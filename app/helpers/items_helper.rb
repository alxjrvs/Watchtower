module ItemsHelper

  def assigned_items
    a = []
    Item.all.each do |i|
      a << i if i.user
    end
    a
  end

  def unassigned_items
    a = []
    Item.all.each do |i|
      a << i unless i.user
    end
    a
  end


end
