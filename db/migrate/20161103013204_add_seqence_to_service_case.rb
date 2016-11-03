class AddSeqenceToServiceCase < ActiveRecord::Migration[5.0]
  def change
    add_column :service_cases, :seqence, :integer
  end
end
