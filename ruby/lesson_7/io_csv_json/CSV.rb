require 'csv'
CSV.open('contact.csv', 'w') do |csv|
  csv << ['Name', 'Email', 'Phone']
  csv << ['John', 'john@example.com', '555-1234']
  csv << ['Alice', 'alice@example', '555-5678']
  csv << ['Bob', 'bob@example.com', '555-9876']
end

#data = CSV.open(filename:'contact.csv', mode:'r' , headers: true)
data = CSV.read('contact.csv', headers: true)
# data = data.read
data.each do |row|
  print "Name: #{row['Name']}, Email: #{row['Email']}, Phone: #{row['Phone']}"
  print "\n"
end

    