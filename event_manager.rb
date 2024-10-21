puts 'Event Manager initialized'

# We're creating a CSV parser
# Problems with our approach : Although this works for our 'event_attendees.csv' file 
# 1.CSV files often contain comments which are lines that start with a pound (#) character
# 2.A column is unable to support a value which contains a comma (,) character
lines = File.readlines('event_attendees.csv')
lines.each_with_index do |line, index|
  next if index == 0
  columns = line.split(",")
  name = columns[2]
  puts name
end