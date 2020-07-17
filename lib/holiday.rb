require 'pry'

# ### .flatten flattens arrays into one-dimension
# ### .compact removes nil items

## REWORK

# 1. Build a #second_supply_for_fourth_of_july method that:
#    -Returns the second supply for the Fourth of July
# 2. Build a add_supply_to_winter_holidays method that:
#    -Iterates through winter holidays and adds a supply to each
# 3. Build a #add_supply_to_memorial_day method that:
#    -Adds a supply to memorial day
# 4. Build a #add_new_holiday_with_supplies method that:
#    -Modifies the original hash by adding supplies of a new
#     holiday to a season
# 5. Build an #all_winter_holiday_supplies method that:
#    -Collects all Winter supplies as an array from all the
#     winter holidays
# 6. Build a #all_supplies_in_holidays method that:
#    -Outputs the formatted list of holidays and their supplies
# 7. Build a #all_holidays_with_bbq method that:
#    -Returns all holidays that have a "BBQ" supply

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end 

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter 
      holiday.each {|event, data| data << supply}
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end 

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply)
  holiday_hash[season][holiday_name] = supply
end 

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end 

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |event, data|
      event_rev = []
      event.to_s.split("_").each do |supply|
        event_rev << supply.capitalize 
      end 
      puts "  #{event_rev.join(" ")}: #{data.join(", ")}"
    end
  end
end 

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.collect do |season, holiday|
    holiday.collect do |holiday, data|
      if data.include?("BBQ")
        holiday
      end 
    end
  end
  .flatten.compact
end