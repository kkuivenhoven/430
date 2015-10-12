class Person < ActiveRecord::Base
   belongs_to :team, :class_name => "Player",
     :foreign_key => "player_id"
end
