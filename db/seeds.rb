advocate_hashes = [
  { :name => "Derrick Wolbert", :dob => Date.new(1988,2,15), :region => "Kenya", :gender => "male", :email => "derrick@gmail.com", :password => "valid_password", :password_confirmation => "valid_password"},
  { :name => "Kate Geremia",    :dob => Date.new(1988,7,23), :region => "Ghana", :gender => "female", :email => "kate@gmail.com", :password => "password", :password_confirmation => "valid_password"},
  { :name => "Bobby Powers",    :dob => Date.new(1988,7,25), :region => "Haiti", :gender => "male", :email => "bobby@gmail.com", :password => "password", :password_confirmation => "valid_password" },
  { :name => "Nihar Shah",      :dob => Date.new(1988,12,5), :region => "Bangalore", :gender => "female", :email => "nihar@gmail.com", :password => "password" , :password_confirmation => "valid_password"}
]

advocate_hashes.each do |advocate_hash|
  advocate = Advocate.new
  advocate.name = advocate_hash[:name]
  advocate.dob = advocate_hash[:dob]
  advocate.region = advocate_hash[:region]
  advocate.gender = advocate_hash[:gender]
  advocate.email = advocate_hash[:email]
  advocate.password = advocate_hash[:password]
  advocate.password_confirmation = advocate_hash[:valid_password]
  advocate.save
end

puts "There are now #{Advocate.count} advocates in the database."

