require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品登録' do
    it "全ての情報が正しいフォーマットで入力されていればユーザー登録できる" do
      @item = FactoryBot.build(:user)
      expect(@item).to be_valid
    end

    it "商品名が空だと登録できない" do
      @item.name = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Name can't be blank")
    end

    it "商品の説明が空だと登録できない" do
      @item.text = ""
      @user.valid?
      expect(@item.errors.full_messages).to include("Text can't be blank")
    end

    it "カテゴリー欄が空だと登録できない" do
      @item.category_id = "1"
      @item.valid?
      expect(@item.errors.full_messages).to include("Category Select")
    end

    it "商品の状態の欄が空だと登録できない" do
      @item.status_id = "1"
      @item.valid?
      expect(@item.errors.full_messages).to include("Status Select")
    end

    it "配送料の負担についての欄が空だと登録できない" do
      @item.burden_id = "1"
      @item.valid?
      expect(@item.errors.full_messages).to include("Burden Select")
    end

    it "発送元の地域の欄が空だと登録できない" do
      @item.area_id = "1"
      @item.valid?
      expect(@item.errors.full_messages).to include("Area Select")
    end

    it "発送までの日数が空だと登録できない" do
      @item.send_id = "1"
      @item.valid?
      expect(@item.errors.full_messages).to include("Send Select")
    end

    it "販売価格が空だと登録できない" do
      @item.price = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Status Select")
    end
  end
end
