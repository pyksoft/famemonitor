class AddZodiacSignIdToCelebrities < ActiveRecord::Migration
  def change
    add_column :celebrities, :zodiac_sign_id, :integer
    add_index  :celebrities, :zodiac_sign_id
    
    Celebrity.all.each do |celebrity|
      celebrity.send(:update_sign_id)
      celebrity.save
    end
  end
end
