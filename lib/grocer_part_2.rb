require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  cart.each do |item|
    coupons.each do |coupon|
      if item[:item] == coupon[:item] && item[:count] >= coupon[:num]
        if item[:count] % coupon[:num] == 0
          couponed_item = {}
          couponed_item[:item] = "#{item[:item]} W/COUPON"
          couponed_item[:count] = coupon[:num]
          couponed_item[:price] = (coupon[:cost] / coupon[:num])
          couponed_item[:clearance] = item[:clearance]
          item[:count] = item[:count] - coupon[:num]
          cart << couponed_item
        elsif item[:count] % coupon[:num] != 0 
          couponed_item = {}
          couponed_item[:item] = "#{item[:item]} W/COUPON"
          couponed_item[:count] = item[:count] - item[:count] % coupon[:num]
          couponed_item[:price] = coupon[:cost] / coupon[:num]
          couponed_item[:clearance] = item[:clearance]
          item[:count] = item[:count] - couponed_item[:count]
          cart << couponed_item
        end 
      end
    end 
  end 
  cart 
end

def apply_clearance(cart)
  cart.each do |item|
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
