
#accepts the array and turns it into a hash. the hash will include item counts

items.each do |item|
  item.each do |key, val|
    puts key
    puts val
  end
end

def consolidate_cart(cart)
  cart.each do |item|
    item.each do |item_name, item_properties|
    puts item_name
    puts item_properties 
    end 
end



def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
