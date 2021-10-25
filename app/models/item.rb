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
  validates :title, :text, presence: true
  validates :genre_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :status_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :charge_id, numericality: { other_than: 1 , message: "can't be blank"}
end
