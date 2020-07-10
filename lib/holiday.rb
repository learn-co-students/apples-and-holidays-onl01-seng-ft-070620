require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
 holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] = ["Lights", "Wreath", supply] 
  holiday_hash[:winter][:new_years] = ["Party Hats", supply]
  return holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] = ["BBQ", supply]
  return holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season] = {holiday_name => supply_array}
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
   new_arr = []
   holiday_hash.each do |key , value|
     if key == :winter
       value.each do |att, data|
         new_arr << data
       end
      end 
   end
   return new_arr.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |hash, kv|
        puts hash.to_s.capitalize! + ":"
          saved = ""
          kv.each do |k, v|
              
             if k.to_s.include?("_")
              cut = k.to_s.split("_").map do
                |half_word|
               half_word.capitalize!
             end
               saved = cut.join(" ")
             else 
                saved  = k.to_s.capitalize!
             end
            puts "  " + saved + ": " + v.join(", ")
          end   
      end 
   end  
 
#   :winter => 
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
   arr = []
   holiday_hash.each do |hash, kv|
     kv.each do |k, v|
       if v.include?("BBQ")
         arr << k
      end 
    end 
  end  
  return arr
end







