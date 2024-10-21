require 'csv'
puts 'EventManager initialized'

contents = CSV.open(
  'event_attendees.csv',
  headers: true,
  header_converters: symbol # Make our column names more uniform
)

contents.each do |row|
  name = row[:first_name]
  puts name
end
