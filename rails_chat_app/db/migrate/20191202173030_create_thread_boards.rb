class CreateThreadBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :thread_boards do |t|

      t.timestamps
    end
  end
end
