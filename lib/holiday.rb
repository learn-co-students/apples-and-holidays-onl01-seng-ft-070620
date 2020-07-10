require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(supplies_hash, season, new_holiday_name, supplies_list)
  supplies_hash[season][new_holiday_name] = supplies_list
  supplies_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_only = []
  holiday_hash[:winter].map do |supplies|
    winter_only << supplies
  end
  winter_only.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize!}:"
      holiday.each do |name, supplies|
      puts"  #{name.to_s.split('_').map {|word| word.capitalize! }.join(' ') }: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_array = []
  holiday_hash.map do |season, holidays|
    holidays.map do |holidays, supplies|
      if supplies.include?("BBQ")
        bbq_array << holidays
      end
    end
  end
  bbq_array
end

