class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.integer  :episode_number,  null: false
      t.string   :title,           null: false
      t.text     :description,     null: false

      t.timestamps
    end
  end
end
