
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
  
  coupons.each do |coupon| 
    coupon.each do |attribute, value| 
      name = coupon[:item] 
    
      if cart[name] && cart[name][:count] >= coupon[:num] 
        if cart["#{name} W/COUPON"] 
          cart["#{name} W/COUPON"][:count] += 1 
        else 
          cart["#{name} W/COUPON"] = {:price => coupon[:cost], 
          :clearance => cart[name][:clearance], :count => 1} 
        end 
  
      cart[name][:count] -= coupon[:num] 
    end 
  end 
end 
  cart 
end
def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
