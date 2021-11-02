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
  validates :status_id,       presence: true
  validates :genre_id,        presence: true
  validates :charge_id,       presence: true
  validates :prefecture_id,   presence: true
  validates :sending_day_id,  presence: true
  validates :price,           presence: true
  validates :genre_id,       numericality: { other_than: 1 , message: "can't be blank"}
  validates :status_id,      numericality: { other_than: 1 , message: "can't be blank"}
  validates :charge_id,      numericality: { other_than: 1 , message: "can't be blank"}
  validates :prefecture_id,  numericality: { other_than: 1 , message: "can't be blank"}
  validates :sending_day_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :image, presence: true, unless: :was_attached?
  #validates :price,          numericality: { only_integer: true}
  validates :price,          numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, message: "300以上9999999以下で入力して下さい"}

  def was_attached?
    self.image.attached?
  end
end
