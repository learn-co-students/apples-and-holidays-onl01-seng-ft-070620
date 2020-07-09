require 'pry'

# given that holiday_hash looks like this:
holiday_hash = {
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

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday_key|
    holiday_key.each do |holiday, supplies|
      supplies << "Balloons"
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  supplies = []
  holiday_hash.each do |season, holiday|
    if season == :winter
      
      holiday.each{|holiday, supply| supplies << supply}
    end
  end
  supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"
    holiday.each do |holiday, supply|
      holiday_array = holiday.to_s.split("_")
      formatted_holiday_array = []
      holiday_array.map{|holiday| formatted_holiday_array << holiday.capitalize}
      formatted_holiday = formatted_holiday_array.join(" ")
      puts "  #{formatted_holiday}: #{supply.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supplies|
      supplies.each do |element|
        if element == "BBQ"
          holiday_array << holiday
        end
      end
    end
  end
  return holiday_array
end