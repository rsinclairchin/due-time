class CreateAvailabilitiesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :availabilities_tables do |t|
      t.boolean mon_am
      t.boolean tues_am
      t.boolean wed_am
      t.boolean thurs_am
      t.boolean fri_am
      t.boolean mon_pm
      t.boolean tues_pm
      t.boolean wed_pm
      t.boolean thurs_pm
      t.boolean fri_pm
    end
  end
end
