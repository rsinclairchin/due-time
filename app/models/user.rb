class User < ActiveRecord::Base
  # attr_accessible :name, :email, :match

  def find_match
    User.where(availability: availability, hunter: !hunter, seeker: !seeker)
  end

end


 # declare array1(boolean type) //stores user1 avail times mon-fri
 # declare array2(boolean type) //stores user2 avail times mon-fri
 #
 #  make method
 #  public Array[] timeCheck(array1, array2){
 #      Arr1[] = array1.this;
 #      Arr2[] = array2.this;
 #      arrMatch[]= new array[array1.length];
 #
 #      for(int j = 0; j< array1.length; j++){
 #            {   //does contains method iterate through entire array without index?
 #
 #            }
 #
 #      }
 #
 #  }
