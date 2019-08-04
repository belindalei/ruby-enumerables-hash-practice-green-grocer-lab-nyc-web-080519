
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
      if cart[item + " W/COUPON"]
        cart[item + " W/COUPON"][:count] += coupon[:num]
      else
        cart[item + " W/COUPON"] = {:price => new_price, :clearance => cart[item][:clearance], :count => coupon[:num]}
      end
      cart[item][:count] -= coupon[:num]
    end
  end
  cart
end

def apply_clearance(cart)
  def apply_clearance(cart)
  cart.each do |key, val|
    if val[:clearance]
      val[:price] = (val[:price] * 0.8).round(2)
    end
  end
end
end

def checkout(cart, coupons)
  # code here
end
