class Message < ActiveRecord::Base
    has_many :responses
    belongs_to :user
end
