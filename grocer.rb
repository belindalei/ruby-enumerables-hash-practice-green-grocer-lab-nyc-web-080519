
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
    item = coupon[:item]
    if cart[item] && cart[item][:count] >= coupon[:num] #coupon can be applied
      new_price = coupon[:cost] / coupon[:num]
      if cart[item+" W/COUPON"]
        cart[item+" W/COUPON"][:count] += 1
      else
        cart[item+" W/COUPON"] = {:price => new_price, :clearance => cart[item][:clearance], :count => coupon[:num]}
      end
      if (cart[item][:count] == 0) #delete original item if new count is now 0
        cart.delete(item)
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
