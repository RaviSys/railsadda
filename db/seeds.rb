# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([
  {email: 'ravi@mailinator.com', password: '111111', first_name: 'Ravi', last_name: 'Singh', role: 'developer'},
  {email: 'rishabh@mailinator.com', password: '111111', first_name: 'Rishabh', last_name: 'Rai', role: 'developer'}, 
  {email: 'neeraj@mailinator.com', password: '111111', first_name: 'Neeraj', last_name: 'Dharwal', role: 'developer'},
  {email: 'neetesh@mailinator.com', password: '111111', first_name: 'Neetesh', last_name: 'Gupta', role: 'developer'},
  {email: 'deepak@mailinator.com', password: '111111', first_name: 'Deepak', last_name: 'Gupta', role: 'developer'},
  {email: 'pradeep@mailinator.com', password: '111111', first_name: 'Pradeep', last_name: 'Agrawal', role: 'developer'},
  {email: 'prateek@mailinator.com', password: '111111', first_name: 'Prateek', last_name: 'Bhatnagar', role: 'developer'},
  {email: 'twinkle@mailinator.com', password: '111111', first_name: 'Twinkle', last_name: 'Verma', role: 'developer'}
])

skills = Skill.create([
  { name: "Angular 1", description: "Pending....." },
  { name: "Angular 2+", description: "Pending....." },
  { name: "Twitter Bootstrap", description: "Pending....." },
  { name: "Javascript", description: "Pending....." },
  { name: "Jquery", description: "Pending....." },
  { name: "Jquery UI", description: "Pending....." },
  { name: "Material Design", description: "Pending....." },
  { name: "Symentic UI", description: "Pending....." },
  { name: "React Native", description: "Pending....." },
  { name: "Node Js", description: "Pending....." },
  { name: "MEAN Stack", description: "Pending....." },
  { name: "Express Js", description: "Pending....." },
  { name: "PHP + MySQL", description: "Pending....." },
  { name: "PHP Laravel", description: "Pending....." },
  { name: "Wordpress", description: "Pending....." },
  { name: "Ruby", description: "Pending....." },
  { name: "Ruby on Rails", description: "Pending....." },
  { name: "Python", description: "Pending....." },
  { name: "Django", description: "Pending....." },
  { name: "Postgresql", description: "Pending....." },
  { name: "Mongo DB", description: "Pending....." },
  { name: "C#", description: "Pending....." },
  { name: "ASP.NET", description: "Pending....." },
  { name: ".NET", description: "Pending....." },
  { name: "Java", description: "Pending....." },
  { name: "GraphQL", description: "Pending....." },
  { name: "Android", description: "Pending....." },
  { name: "Ionic", description: "Pending....." },
  { name: "GIT", description: "Pending....." },
  { name: "Bitbucket", description: "Pending....." },
  { name: "AWS", description: "Pending....." },
  { name: "DevOpps", description: "Pending....." },
  { name: "Docker", description: "Pending....." },
  { name: "Heroku", description: "Pending....." },
  { name: "GITLAB", description: "Pending....." },
  { name: "Block Chain", description: "Pending....." },
  { name: "Sinatra", description: "Pending....." },
  { name: "C", description: "Pending....." },
  { name: "C++", description: "Pending....." },
  { name: "HTML5", description: "Pending....." },
  { name: "JSON", description: "Pending....." },
  { name: "XML", description: "Pending....." },
  { name: "CSS3", description: "Pending....." },
  { name: "IoT", description: "Pending....." }
])