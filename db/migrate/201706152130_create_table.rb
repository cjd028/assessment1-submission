require_relative '../../config/application'

# Your Code begins from this line onwards #

class CreateTable < ActiveRecord::Migration[4.2]
def change
# implement your Student model here
      create_table :tasks do |t|
      t.string :description
      t.string :status
    

   t.timestamps
  end
end
end