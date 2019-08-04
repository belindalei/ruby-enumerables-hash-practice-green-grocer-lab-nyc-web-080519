
#accepts the array and turns it into a hash. the hash will include item counts

def consolidate_cart(cart)
  hash = {}
  cart.each do |item|
    item.each do |key, val|
      if hash.has_key?(key)
        hash[key][:count] += 1
      else
        hash[key] = val
        val[:count] = 1
      end
    end
  end
  hash
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
