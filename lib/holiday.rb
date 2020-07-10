require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, season_hash|
    if season == :winter
      season_hash.each {|holiday, supplies| supplies << supply}
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.map do |season, season_hash|
    if season == :spring
      season_hash.map do |holiday, supplies|
        if holiday == :memorial_day
          supplies << supply
        end
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
holiday_hash.each do |season, season_hash|
    puts "#{season.capitalize}:"
    season_hash.each do |holiday, supplies|
      holiday_string = holiday.to_s.split("_")
      holiday_string.map do |word|
        word.capitalize!
      end
      puts "  #{holiday_string.join(" ")}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, season_hash|
    season_hash.each do |holiday, supplies|
      if supplies.include?("BBQ")
        bbq_holidays << holiday
      end
    end
  end
  bbq_holidays
end







