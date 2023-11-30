class AddPresidentReferencesToReviews < ActiveRecord::Migration[7.1]
  def change
    add_reference :reviews, :president, null: false, foreign_key: true
  end
end
