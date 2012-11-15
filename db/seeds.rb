puts 'CREATING ROLES'

Role.create([
  { :name => 'admin' }, 
  { :name => 'user' }
], :without_protection => true)

puts 'SETTING UP DEFAULT USER LOGIN'

user1 = User.create! :name => 'Admin', :email => 'admin@b.com', :password => 'password', :password_confirmation => 'password'
puts 'New user created: ' << user1.name
user2 = User.create! :name => 'User2', :email => 'user2@b.com', :password => 'password', :password_confirmation => 'password'
puts 'New user created: ' << user2.name
user1.add_role :admin
user2.add_role :user