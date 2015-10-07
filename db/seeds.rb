# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

john = User.create(email: 'john@beatles.com', password: 'testtest', avatar_url: 'http://johnlennonartwork.com/wp-content/uploads/2011/05/john-lennon1-300x294.jpg')
paul = User.create(email: 'paul@beatles.com', password: 'testtest', avatar_url: 'http://beatlesthe.free.fr/img/paul.jpg')
ringo = User.create(email: 'ringo@beatles.com', password: 'testtest', avatar_url: '')
george = User.create(email: 'george@beatles.com', password: 'testtest', avatar_url: '')

startup_stash = Product.create(
  name: 'Startup Stash',
  tagline: 'A curated directory of 400 resources & tools for startups',
  url: 'http://startupstash.com',
  user: john
)

startup_launch_list = Product.create(
  name: 'Startup Launch List',
  tagline: 'Articles you need to read before launching a startup',
  url: 'http://startuplaunchlist.com',
  user: paul
)

john.up_votes startup_stash
paul.up_votes startup_stash
george.up_votes startup_stash

ringo.up_votes startup_launch_list