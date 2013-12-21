class CreateFbPages < ActiveRecord::Migration
  def change
    create_table :fb_pages do |t|
      t.string :business_name
      t.string :facebook_url
      t.text :description
      t.string :name
      t.string :email
      t.integer :facebook_likes

      t.timestamps
    end
  end
end
