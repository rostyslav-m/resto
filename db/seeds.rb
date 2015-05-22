# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Table.create!(number: 1, title: "blue lagoone")
Table.create!(number: 2, title: "green hill")

Reservation.create!(person: "Mr. President", starttime: "2015-05-23 14:00:00", endtime: "2015-05-23 17:00:00", table_id: 1)
Reservation.create!(person: "Winnie the pooh", starttime: "2015-05-23 18:00:00", endtime: "2015-05-23 21:00:00", table_id: 1)
Reservation.create!(person: "Lady Gaga", starttime: "2015-05-23 23:00:00", endtime: "2015-05-24 04:00:00", table_id: 1)
Reservation.create!(person: "Peter Pan", starttime: "2015-05-23 12:00:00", endtime: "2015-05-23 14:00:00", table_id: 2)
Reservation.create!(person: "Mr. X", starttime: "2015-05-23 14:30:00", endtime: "2015-05-23 17:00:00", table_id: 2)
