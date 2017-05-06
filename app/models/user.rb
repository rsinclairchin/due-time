class User < ActiveRecord::Base
  attr_accessible :name, :email

  def find_match
    User.where(availability: availability, hunter: !hunter, seeker: !seeker)
  end

end
