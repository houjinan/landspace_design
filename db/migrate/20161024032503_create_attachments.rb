class CreateAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :attachments do |t|
      t.string :avatar
      t.string :resource_id
      t.string :resource_type
      t.timestamps
    end
  end
end
