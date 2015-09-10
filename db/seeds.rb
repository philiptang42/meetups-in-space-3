# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')
meetups = [{ title: 'Lunar Golfing', description: 'Super fan activity to play with your alliens', location: 'Moon'},
  { title: 'venus soccer', description: 'Kicking the ball', location: 'Mercury'}, { title: 'shut up', description: 'get out', location: 'uranus'}]

users = [{ provider: 'Verizon', uid: '1', email: 'BigBoss@metalgear.com', username: 'Big Boss', avatar_url: 'google.com'},
  { provider: 'Comcast', uid: '2', email: 'SkullFace@xof.com', username: 'Skull Face', avatar_url: 'yahoo.com'}, {provider: 'AOL', uid: '3', email: 'blah.com', username: 'jerk', avatar_url: 'aol.com'}]

usermeetups = [ {meetup_id: 1, user_id: 1}, {meetup_id: 2, user_id: 2}, {meetup_id: 3, user_id: 3} ]

meetups.each do |attributes|
  Meetup.create(attributes)
end

users.each do |info|
  User.create(info)
end

usermeetups.each do |kek|
  UserMeetup.create(kek)
end
