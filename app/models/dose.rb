class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :ingredient, uniqueness: { scope: :cocktail }
  # une seul fois un ingrédient par cocktail
  validates :description, presence: true
end
