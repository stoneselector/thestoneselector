class Item < ActiveRecord::Base
  attr_accessible :color, :location, :lot_number, :quantity, :size, :slab_number, :status, :thickness
end
