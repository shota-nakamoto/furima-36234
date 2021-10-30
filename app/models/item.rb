class Item < ApplicationRecord
  belongs_to :user
  has_one :buy_management
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :status
  belongs_to :charge
  belongs_to :prefecture
  belongs_to :sending_day
  validates :shohin_name,     presence: true
  validates :explanation,     presence: true
  validates :price,           presence: true
  validates :status_id,       presence: true
  validates :genre_id,        presence: true
  validates :charge_id,       presence: true
  validates :prefecture_id,   presence: true
  validates :sending_day_id,  presence: true
  validates :genre_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :status_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :charge_id, numericality: { other_than: 1 , message: "can't be blank"}
end
