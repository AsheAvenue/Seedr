require "Seedr"

3.times do
  puts "First name: #{Seedr.first_name}"
  puts "Last name: #{Seedr.last_name}"
  puts "Full name: #{Seedr.full_name}"
  puts "Middle inital: #{Seedr.middle_initial}"
  puts "Username: #{Seedr.username}"
  puts "Company name: #{Seedr.company_name}"
  puts "Email: #{Seedr.email}"
  puts "Address line 1: #{Seedr.address_line_1}"
  puts "Address line 2: #{Seedr.address_line_2}"
  puts "random integer: #{Seedr.random_integer}"
  puts "random character: #{Seedr.random_string}"
  puts "phone number: #{Seedr.phone_number}"
end
