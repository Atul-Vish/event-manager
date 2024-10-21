require 'csv'
require 'pry-byebug'
puts 'EventManager initialized'

contents = CSV.open(
  'event_attendees.csv',
  headers: true,
  header_converters: :symbol # Make our column names more uniform
)

contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]
  binding.pry
  # if the zip code is exactly five digits, assume that it is ok
  if zipcode.length < 5
    zipcode = zipcode.rjust(5, '0')
  # if the zip code is more than five digits, truncate it to the first five digits
  elsif zipcode.length > 5
    zipcode = zipcode[0..4]
  # if the zip code is less than five digits, add zeros to the front until it becomes five digits  
  end

  puts "#{name} #{zipcode}"
end
