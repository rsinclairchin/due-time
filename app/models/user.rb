class User < ActiveRecord::Base
  attr_accessible :name, :email, :match

  def find_match
    User.where(availability: availability, hunter: !hunter, seeker: !seeker)
  end

end
