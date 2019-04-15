# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([
  {email: 'ravi@mailinator.com', password: '111111', first_name: 'Ravi', last_name: 'Singh'},
  {email: 'rishabh@mailinator.com', password: '111111', first_name: 'Rishabh', last_name: 'Rai'}, 
  {email: 'neeraj@mailinator.com', password: '111111', first_name: 'Neeraj', last_name: 'Dharwal'},
  {email: 'neetesh@mailinator.com', password: '111111', first_name: 'Neetesh', last_name: 'Gupta'},
  {email: 'deepak@mailinator.com', password: '111111', first_name: 'Deepak', last_name: 'Gupta'},
  {email: 'pradeep@mailinator.com', password: '111111', first_name: 'Pradeep', last_name: 'Agrawal'},
  {email: 'prateek@mailinator.com', password: '111111', first_name: 'Prateek', last_name: 'Bhatnagar'},
  {email: 'twinkle@mailinator.com', password: '111111', first_name: 'Twinkle', last_name: 'Verma'}
])