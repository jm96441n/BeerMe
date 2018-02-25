class Beer < ApplicationRecord
  belongs_to :brewery
  belongs_to :beer_style
end
