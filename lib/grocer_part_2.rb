require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  couponed_item = {}
  cart.each do |item|
    coupons.each do |coupon|
      #binding.pry
      if ((item[:item] == coupon[:item]) && (item[:count] >= coupon[:num]))
        if item[:count] % coupon[:num] == 0 
        item[:item] = "#{item[:item]} W/COUPON"
        item[:price] = coupon[:cost] / coupon[:num]
        elsif item[:count] % coupon[:num] != 0 
        #binding.pry
        couponed_item[:item] = "#{item[:item]} W/COUPON"
        couponed_item[:count] = item[:count] - item[:count] % coupon[:num]
        couponed_item[:price] = coupon[:cost] / coupon[:num]
        couponed_item[:clearance] = item[:clearance]
        #binding.pry
        cart << couponed_item
        item[:count] = item[:count] % coupon[:num]
        binding.pry
        end 
      end
    end 
  end 
  cart 
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
