# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user27 = User.create(first_name: "Bob", last_name: "Smith", email: "bsmith@email.com", password_digest: "asdf")


message1 = Message.create(content: "Hey everyone! How's it going?", user_id: user27.id)

message2 = Message.create(content: "its going great!!!!", user_id: user27.id)
message3 = Message.create(content: "its going grsdfdseat!!!!", user_id: user27.id)
message4 = Message.create(content: "its going greadsfsdt!!!!", user_id: user27.id)
message5 = Message.create(content: "its going sdfdgreat!!!!", user_id: user27.id)
message6 = Message.create(content: "its godfsding great!!!!", user_id: user27.id)
message7 = Message.create(content: "its gaoing great!!!!", user_id: user27.id)

#user27 = User.create(first_name: "Bob", last_name: "Smith", email: "bsmith@email.com", password_digest: "asdf")



Response.create(content: "hey", message_id: message1.id, user_id: user27.id)
Response.create(content: "heasdfdsay", message_id: message1.id, user_id: user27.id)
Response.create(content: "heasdfdsay", message_id: message1.id, user_id: user27.id)
Response.create(content: "heasdfdsay", message_id: message2.id, user_id: user27.id)
Response.create(content: "heasdfdsay", message_id: message2.id, user_id: user27.id)
Response.create(content: "heasdfdsay", message_id: message2.id, user_id: user27.id)
Response.create(content: "heasdfdsay", message_id: message3.id, user_id: user27.id)
Response.create(content: "heasdfdsay", message_id: message3.id, user_id: user27.id)
Response.create(content: "heasdfdsay", message_id: message3.id, user_id: user27.id)
Response.create(content: "heasdfdsay", message_id: message3.id, user_id: user27.id)
Response.create(content: "heasdfdsay", message_id: message4.id, user_id: user27.id)
Response.create(content: "heasdfdsay", message_id: message4.id, user_id: user27.id)
Response.create(content: "heasdfdsay", message_id: message4.id, user_id: user27.id)
Response.create(content: "heasdfdsay", message_id: message5.id, user_id: user27.id)
Response.create(content: "heasdfdsay", message_id: message5.id, user_id: user27.id)
Response.create(content: "heasdfdsay", message_id: message5.id, user_id: user27.id)
Response.create(content: "heasdfdsay", message_id: message5.id, user_id: user27.id)
Response.create(content: "heasdfdsay", message_id: message5.id, user_id: user27.id)
