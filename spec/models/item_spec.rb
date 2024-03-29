require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品の保存' do
    context '商品が登録できる場合' do
      it 'shohin_name、 explanation、 price、 status_id、genre_id、 charge_id、 prefecture_id、 sending_day_idが存在すれば登録できる' do
        expect(@item).to be_valid
      end
    end
    context '商品が登録できない場合' do
      it 'shohin_nameが空では保存できない' do
        @item.shohin_name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Shohin name can't be blank"
      end
      it 'explanationが空では保存できない' do
        @item.explanation = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Explanation can't be blank"
      end
      it 'priceが空では保存できない' do
        @item.price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Price can't be blank"
      end
      it 'status_idが空では保存できない' do
        @item.status_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Status can't be blank"
      end
      it 'genre_idが空では保存できない' do
        @item.genre_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Genre can't be blank"
      end
      it 'charge_idが空では保存できない' do
        @item.charge_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Charge can't be blank"
      end
      it 'prefecture_idが空では保存できない' do
        @item.prefecture_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Prefecture can't be blank"
      end
      it 'sending_day_idが空では保存できない' do
        @item.sending_day_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Sending day can't be blank"
      end
      it '商品画像が空では出品出来ない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include "Image can't be blank"
      end
      it 'カテゴリーに「---」が選択されている場合は出品できない' do
        @item.genre_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include "Genre can't be blank"
      end
      it '商品の状態に「---」が選択されている場合は出品できない' do
        @item.status_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include "Status can't be blank"
      end
      it '配送料の負担に「---」が選択されている場合は出品できない' do
        @item.charge_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include "Charge can't be blank"
      end
      it '発送元の地域に「---」が選択されている場合は出品できない' do
        @item.prefecture_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include "Prefecture can't be blank"
      end
      it '発送までの日数に「---」が選択されている場合は出品できない' do
        @item.sending_day_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Sending day can't be blank"
      end
      it '価格に半角数字以外が含まれている場合は出品できない' do
        @item.price = 'あ'
        @item.valid?
        expect(@item.errors.full_messages).to include "Price 300以上9999999以下で入力して下さい"
      end
      it '価格が300円未満では出品できない' do
        @item.price = '299'
        @item.valid?
        expect(@item.errors.full_messages).to include "Price 300以上9999999以下で入力して下さい"
      end
      it '価格が9_999_999円を超えると出品できない' do
        @item.price = '10000000'
        @item.valid?
        expect(@item.errors.full_messages).to include "Price 300以上9999999以下で入力して下さい"
      end
      it 'userが紐付いていなければ出品できない' do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include "User must exist"
      end
    end
  end
end
