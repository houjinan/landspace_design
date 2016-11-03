class AddSeqenceToMember < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :seqence, :integer
  end
end
