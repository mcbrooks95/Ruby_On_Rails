# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
message1 = Message.create(content: "Hey everyone! How's it going?")

message2 = Message.create(content: "its going great!!!!")
message3 = Message.create(content: "its going grsdfdseat!!!!")
message4 = Message.create(content: "its going greadsfsdt!!!!")
message5 = Message.create(content: "its going sdfdgreat!!!!")
message6 = Message.create(content: "its godfsding great!!!!")
message7 = Message.create(content: "its gaoing great!!!!")

Response.create(content: "hey", message_id: message1.id)
Response.create(content: "heasdfdsay", message_id: message1.id)
Response.create(content: "heasdfdsay", message_id: message1.id)
Response.create(content: "heasdfdsay", message_id: message2.id)
Response.create(content: "heasdfdsay", message_id: message2.id)
Response.create(content: "heasdfdsay", message_id: message2.id)
Response.create(content: "heasdfdsay", message_id: message3.id)
Response.create(content: "heasdfdsay", message_id: message3.id)
Response.create(content: "heasdfdsay", message_id: message3.id)
Response.create(content: "heasdfdsay", message_id: message3.id)
Response.create(content: "heasdfdsay", message_id: message4.id)
Response.create(content: "heasdfdsay", message_id: message4.id)
Response.create(content: "heasdfdsay", message_id: message4.id)
Response.create(content: "heasdfdsay", message_id: message5.id)
Response.create(content: "heasdfdsay", message_id: message5.id)
Response.create(content: "heasdfdsay", message_id: message5.id)
Response.create(content: "heasdfdsay", message_id: message5.id)
Response.create(content: "heasdfdsay", message_id: message5.id)
