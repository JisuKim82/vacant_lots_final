class CreateLots < ActiveRecord::Migration
  def change
    create_table :lots do |t|
      t.string :address
      t.string :borough
      t.string :bbl
      t.string :block
      t.string :lot
      t.string :zipcode
      t.string :agency
      t.string :area_sqft
      t.string :area_acres
      t.string :is_vacant
      t.string :actual_use
      t.string :group_has_access
      t.string :accessible
      t.string :longitude
      t.string :latitude
      t.timestamps
    end
  end
end
