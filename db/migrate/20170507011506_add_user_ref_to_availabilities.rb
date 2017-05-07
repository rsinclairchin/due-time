class AddUserRefToAvailabilities < ActiveRecord::Migration[5.0]
  def change
    add_reference :availabilities, :user, foreign_key: true
  end
end
