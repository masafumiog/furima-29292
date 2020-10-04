require 'rails_helper'

RSpec.describe Order, type: :model do
  before do
    user = FactoryBot.create(:user)
    item = FactoryBot.create(:item)
    sleep 2
    @order = FactoryBot.build(:orderBuy, user_id: user.id, item_id: item.id)
  end
  describe '商品購入' do

    context '商品購入がうまくいくとき' do
      it "全必須項目が正しく入力されているとき購入できる" do
        sleep 2
        expect(@order).to be_valid
      end
      it "建物名が空のときでも購入できる" do
        @order.building = ""
      end

    end

    context '商品購入がうまくいかないとき' do

      it "郵便番号が空のときは購入できない" do
        @order.postnumber = ""
        @order.valid?
        expect(@order.errors.full_messages).to include("Postnumber can't be blank")
      end
      it "郵便番号のハイフンを記述しないと購入できない" do
        @order.postnumber = "0000000"
        @order.valid?
        expect(@order.errors.full_messages).to include("Postnumber is invalid. Input '-'")
      end
      it "都道府県が空(1)のときは購入できない" do
        @order.prefectures_id = "1"
        @order.valid?
        expect(@order.errors.full_messages).to include("Prefecture must be other than 1")
      end
      it "市区町村が空のときは購入できない" do
        @order.city = ""
        @order.valid?
        expect(@order.errors.full_messages).to include("City can't be blank")
      end
      it "番地が空のときは購入できない" do
        @order.address = ""
        @order.valid?
        expect(@order.errors.full_messages).to include("Address can't be blank")
      end
      it "電話番号が空のときは購入できない" do
        @order.tellnumber = ""
        @order.valid?
        expect(@order.errors.full_messages).to include("Tellnumber can't be blank")
      end
      it "電話番号は11桁じゃないと購入できない" do
        @order.tellnumber = "1234567890"
        @order.valid?
        expect(@order.errors.full_messages).to include("Tellnumber is invalid. Input all number")
      end
    end
  end
end
