class Song < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :artist
end
