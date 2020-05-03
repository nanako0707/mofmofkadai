class Property < ApplicationRecord
  validates :property_name, presence: true
  validates :rent, presence: true
  validates :street_address, presence: true
  validates :age, presence: true
  #アソシエーション設定、親モデルのデータを削除した時に子モデルも一緒に削除される。
  has_many :nearest_stations, dependent: :destroy, inverse_of: :property
  #reject_all_blank関数でtrueが出たパラメータは、送信データから除外させていく。
  accepts_nested_attributes_for :nearest_stations, allow_destroy: true, reject_if: :all_blank
end
