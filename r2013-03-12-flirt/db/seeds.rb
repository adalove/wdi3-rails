User.delete_all

u1 = User.create(:name => 'Peter', :email => 'peter@gmail.com', :password => 'a', :password_confirmation => 'a')
u2 = User.create(:name => 'Paul', :email => 'paul@gmail.com', :password => 'a', :password_confirmation => 'a')
u3 = User.create(:name => 'Mary', :email => 'mary@gmail.com', :password => 'a', :password_confirmation => 'a')