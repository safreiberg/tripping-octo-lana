puts 'CREATING ROLES'

## Setting up Roles

Role.create([
  { :name => 'admin' }, 
  { :name => 'user' }
], :without_protection => true)

puts 'SETTING UP DEFAULT USER LOGIN'

## Setting up Users

user1 = User.create! :name => 'Admin', :email => 'admin@b.com', :password => 'password', :password_confirmation => 'password'
puts 'New user created: ' << user1.name
user2 = User.create! :name => 'User2', :email => 'user2@b.com', :password => 'password', :password_confirmation => 'password'
puts 'New user created: ' << user2.name
user1.add_role :admin
user2.add_role :user

## Setting up times

today = DateTime.now
yesterday = today - 1.day
two_ago = today - 2.day
three_ago = today - 3.day
four_ago = today - 4.day
five_ago = today - 5.day

## Setting up Feelings

Feeling.create(:target_type => "general", :value => "65", :user_id => user2.id, :time => today, :location => "stata")
Feeling.create(:target_type => "general", :value => "45", :user_id => user2.id, :time => today-2.hour, :location => "student center")
Feeling.create(:target_type => "workout", :value => "25", :user_id => user2.id, :time => today-6.hour, :location => "boathouse")
Feeling.create(:target_type => "workout", :value => "88", :user_id => user2.id, :time => yesterday, :location => "boathouse")
Feeling.create(:target_type => "general", :value => "10", :user_id => user2.id, :time => yesterday-10.hour, :location => "apartment")
Feeling.create(:target_type => "general", :value => "95", :user_id => user2.id, :time => two_ago, :location => "starbucks")
Feeling.create(:target_type => "general", :value => "65", :user_id => user2.id, :time => two_ago - 2.hour, :location => "stata")
Feeling.create(:target_type => "general", :value => "33", :user_id => user2.id, :time => two_ago - 4.hour, :location => "apartment")
Feeling.create(:target_type => "general", :value => "71", :user_id => user2.id, :time => three_ago - 5.hour, :location => "student center")
Feeling.create(:target_type => "workout", :value => "46", :user_id => user2.id, :time => three_ago - 7.hour, :location => "boathouse")
Feeling.create(:target_type => "general", :value => "65", :user_id => user2.id, :time => four_ago, :location => "stata")
Feeling.create(:target_type => "workout", :value => "46", :user_id => user2.id, :time => four_ago-2.hour, :location => "boathouse")
Feeling.create(:target_type => "general", :value => "87", :user_id => user2.id, :time => four_ago-8.hour, :location => "apartment")

## Setting up Foods

Food.create(:calories => 500, :carbs => 56, :fat => 2, :protein => 11, :time => today, :user_id => user2.id, :location => "student center", :name => "bagel")
Food.create(:calories => 550, :carbs => 69, :fat => 27, :protein => 7, :time => today-6.hour, :user_id => user2.id, :location => "apartment", :name => "muffin")
Food.create(:calories => 270, :carbs => 31, :fat => 8, :protein => 20, :time => today+4.hour, :user_id => user2.id, :location => "boathouse", :name => "builder bar")
Food.create(:calories => 188, :carbs => 6, :fat => 16, :protein => 8, :time => today, :user_id => user2.id, :location => "student center", :name => "peanut butter")
Food.create(:calories => 700, :carbs => 64, :fat => 27, :protein => 49, :time => today-2.hour, :user_id => user2.id, :location => "flour", :name => "roast beef sandwich")

Food.create(:calories => 500, :carbs => 56, :fat => 2, :protein => 11, :time => yesterday, :user_id => user2.id, :location => "student center", :name => "bagel")
Food.create(:calories => 550, :carbs => 69, :fat => 27, :protein => 7, :time => yesterday-6.hour, :user_id => user2.id, :location => "apartment", :name => "muffin")
Food.create(:calories => 270, :carbs => 31, :fat => 8, :protein => 20, :time => yesterday+4.hour, :user_id => user2.id, :location => "boathouse", :name => "builder bar")
Food.create(:calories => 188, :carbs => 6, :fat => 16, :protein => 8, :time => yesterday, :user_id => user2.id, :location => "student center", :name => "peanut butter")
Food.create(:calories => 700, :carbs => 64, :fat => 27, :protein => 49, :time => yesterday-2.hour, :user_id => user2.id, :location => "flour", :name => "roast beef sandwich")

Food.create(:calories => 500, :carbs => 56, :fat => 2, :protein => 11, :time => two_ago, :user_id => user2.id, :location => "student center", :name => "bagel")
Food.create(:calories => 550, :carbs => 69, :fat => 27, :protein => 7, :time => two_ago-6.hour, :user_id => user2.id, :location => "apartment", :name => "muffin")
Food.create(:calories => 270, :carbs => 31, :fat => 8, :protein => 20, :time => two_ago+4.hour, :user_id => user2.id, :location => "boathouse", :name => "builder bar")
Food.create(:calories => 188, :carbs => 6, :fat => 16, :protein => 8, :time => two_ago, :user_id => user2.id, :location => "student center", :name => "peanut butter")
Food.create(:calories => 700, :carbs => 64, :fat => 27, :protein => 49, :time => two_ago-2.hour, :user_id => user2.id, :location => "flour", :name => "roast beef sandwich")

Food.create(:calories => 500, :carbs => 56, :fat => 2, :protein => 11, :time => three_ago, :user_id => user2.id, :location => "student center", :name => "bagel")
Food.create(:calories => 550, :carbs => 69, :fat => 27, :protein => 7, :time => three_ago-6.hour, :user_id => user2.id, :location => "apartment", :name => "muffin")
Food.create(:calories => 270, :carbs => 31, :fat => 8, :protein => 20, :time => three_ago+4.hour, :user_id => user2.id, :location => "boathouse", :name => "builder bar")
Food.create(:calories => 188, :carbs => 6, :fat => 16, :protein => 8, :time => three_ago, :user_id => user2.id, :location => "student center", :name => "peanut butter")
Food.create(:calories => 700, :carbs => 64, :fat => 27, :protein => 49, :time => three_ago-2.hour, :user_id => user2.id, :location => "flour", :name => "roast beef sandwich")

Food.create(:calories => 500, :carbs => 56, :fat => 2, :protein => 11, :time => four_ago, :user_id => user2.id, :location => "student center", :name => "bagel")
Food.create(:calories => 550, :carbs => 69, :fat => 27, :protein => 7, :time => four_ago-6.hour, :user_id => user2.id, :location => "apartment", :name => "muffin")
Food.create(:calories => 270, :carbs => 31, :fat => 8, :protein => 20, :time => four_ago+4.hour, :user_id => user2.id, :location => "boathouse", :name => "builder bar")
Food.create(:calories => 188, :carbs => 6, :fat => 16, :protein => 8, :time => four_ago, :user_id => user2.id, :location => "student center", :name => "peanut butter")
Food.create(:calories => 700, :carbs => 64, :fat => 27, :protein => 49, :time => four_ago-2.hour, :user_id => user2.id, :location => "flour", :name => "roast beef sandwich")

## Setting up Sleeps

Sleep.create(:end => today-16.hour, :quality => "85", :start => today-8.hour, :user_id => user2.id, :location => "apartment")
Sleep.create(:end => yesterday-16.hour, :quality => "65", :start => yesterday-8.hour, :user_id => user2.id, :location => "apartment")
Sleep.create(:end => two_ago-16.hour, :quality => "70", :start => two_ago-8.hour, :user_id => user2.id, :location => "apartment")
Sleep.create(:end => three_ago-16.hour, :quality => "40", :start => three_ago-12.hour, :user_id => user2.id, :location => "apartment")
Sleep.create(:end => four_ago-16.hour, :quality => "95", :start => four_ago-8.hour, :user_id => user2.id, :location => "apartment")

## Setting up Workouts

Workout.create(:end => today, :length => 120, :location => "boathouse", :start => today-2.hour, :type => "steady state", :user_id => user2.id, :what => "2x10k")
Workout.create(:end => yesterday, :length => 120, :location => "boathouse", :start => yesterday-2.hour, :type => "steady state", :user_id => user2.id, :what => "2x10k")
Workout.create(:end => two_ago, :length => 120, :location => "boathouse", :start => two_ago-2.hour, :type => "steady state", :user_id => user2.id, :what => "2x10k")
Workout.create(:end => three_ago, :length => 120, :location => "boathouse", :start => three_ago-2.hour, :type => "steady state", :user_id => user2.id, :what => "2x10k")
Workout.create(:end => four_ago, :length => 120, :location => "boathouse", :start => four_ago-2.hour, :type => "steady state", :user_id => user2.id, :what => "2x10k")

## Setting up Healths

Health.create(:weight => 160, :user_id => user2.id, :time => today - 6.hour)
Health.create(:weight => 162, :user_id => user2.id, :time => yesterday - 6.hour)
Health.create(:weight => 159, :user_id => user2.id, :time => two_ago - 6.hour)
Health.create(:weight => 165, :user_id => user2.id, :time => three_ago - 6.hour)
Health.create(:weight => 160, :user_id => user2.id, :time => four_ago - 6.hour)
