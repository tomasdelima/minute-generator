# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ael = Ael.create city: 'Rio de Janeiro', members: 'Anissa, Marilúcia, Suyane, Tomás, Mathilde, Marlliny, Daniele, Robério, Renato'

minute = Minute.create date: Date.today, members: ael.members, ael: ael

Entry.create minute_id: minute.id, title: 'Entry number 1', description: 'First entry, not much to say'
Entry.create minute_id: minute.id, title: 'Entry number 2', description: 'Second entry, some to say'
Entry.create minute_id: minute.id, title: 'Entry number 3', description: 'Last entry, nothing more to say', due_date: Date.today + 5.days

