require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }
    holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
    holiday_hash[:winter][:christmas].push(supply)
    holiday_hash[:winter][:new_years].push(supply)
end

def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
     holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
 holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
     puts "#{season.capitalize}:"
     holidays.each do |holiday, supplies|
     puts "  #{holiday.to_s.split("_").map {|word| word.capitalize}.join(" ")}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holiday = []
  holiday_hash.each do |season, var1|
    var1.each do |holiday, items|
      if items.include?("BBQ")
        bbq_holiday << holiday
      end
    end 
  end
  bbq_holiday
end 






