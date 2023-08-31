require 'json'
json_data = File.read('employee.json')
data = JSON.parse(json_data)

print "Name: #{data['employee']['name']} , "
print "Salary: #{data['employee']['salary']} , "
print "Married: #{data['employee']['married']}"
print "\n"