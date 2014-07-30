require "active_record"

class User < ActiveRecord::Base
  has_one :fish

  validates :username, :presence => true, :message => "Username is required"
  validates :username, :uniqueness => true
  validates :username, :length => {:minimum => 4}
  validates :password, presence: true
end

