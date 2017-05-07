class User < ActiveRecord::Base
  attr_accessor(:availability)
  has_one :availability

  def find_match
    if mon_am_match
      return mon_am_match
    elsif tues_am_match
      return tues_am_match
    elsif wed_am_match
      return wed_am_match
    elsif thurs_am_match
      return thurs_am_match
    elsif fri_am_match
      return fri_am_match
    elsif mon_pm_match
      return mon_pm_match
    elsif tues_pm_match
      return tues_pm_match
    elsif wed_pm_match
      return wed_pm_match
    elsif thurs_pm_match
      return thurs_pm_match
    elsif fri_pm_match
      return fri_pm_match
    end
  end

private

  def mon_am_match
    Availability.where(mon_am: true)
  end

  def tues_am_match
    Availability.where(tues_am: true)
  end

  def wed_am_match
    Availability.where(wed_am: true)
  end

  def thurs_am_match
    Availability.where(thurs_am: true)
  end

  def fri_am_match
    Availability.where(fri_am: true)
  end

  def mon_pm_match
    Availability.where(mon_pm: true)
  end

  def tues_pm_match
    Availability.where(tues_pm: true)
  end

  def wed_pm_match
    Availability.where(wed_pm: true)
  end

  def thurs_pm_match
    Availability.where(thurs_pm: true)
  end

  def fri_pm_match
    Availability.where(fri_pm: true)
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
