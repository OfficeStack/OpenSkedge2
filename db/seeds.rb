# Users
owner = User.create!(:email => 'owner@gmail.com', :password => 'password', :password_confirmation => 'password', :firstname => 'owner', :lastname => 'guy')
employee = User.create!(:email => 'employee@gmail.com', :password => 'password', :password_confirmation => 'password', :firstname => 'employee', :lastname => 'guy')

# Roles
owner.roles.create(name: 'Owner')
employee.roles.create(name: 'Employee')

# Sales group with positon and schedule
group = Group.create(name: 'Sales', description: 'Sales team schedules.')
position = group.positions.create(name: 'Sales Associate', description: 'Come into work and make phone calls.', paradigm: :fixed_shift)

# Example availabilities and shifts of various types
5.times do |i|
  position.shifts.create(start_time: (i+10).days.from_now.change(hour: 9), end_time: (i+10).days.from_now.change(hour: 14))
  employee.availabilities.create(start_time: ((2*i)+18).days.from_now.change(hour: (i+9)), end_time: ((2*i)+18).days.from_now.change(hour: (i+12)))
end

employee.availabilities.create(start_time: 11.days.from_now.change(hour: 9), end_time: 11.days.from_now.change(hour: 14))
position.shifts.create(user_id: employee.id, start_time: 16.days.from_now.change(hour: 9), end_time: 16.days.from_now.change(hour: 18))