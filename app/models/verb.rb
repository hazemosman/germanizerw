class Verb < ApplicationRecord
  belongs_to :tense
  validates_presence_of :infinitive, :ich, :du, :er, :wir, :ihr, :sie
  validates_uniqueness_of :infinitive
end
