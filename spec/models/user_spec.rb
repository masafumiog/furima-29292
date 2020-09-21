require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    it "nicknameが空だと登録できない" do
      @user = FactoryBot.build(:user)  # Userのインスタンス生成
      @user.nickname = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end

    it "emailが空だと登録できない" do
      @user = FactoryBot.build(:user) 
      @user.email = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end

    it "name_seiが空だと登録できない" do
      @user = FactoryBot.build(:user) 
      @user.name_sei = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Name sei can't be blank")
    end

    it "name_maiが空だと登録できない" do
      @user = FactoryBot.build(:user) 
      @user.name_mai = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Name mai can't be blank")
    end
    
    it "kana_seiが空だと登録できない" do
      @user = FactoryBot.build(:user) 
      @user.kana_sei = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Kana sei can't be blank")
    end

    it "Kana_meiが空だと登録できない" do
      @user = FactoryBot.build(:user) 
      @user.kana_mei = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Kana mei can't be blank")
    end

    it "birthdayが空だと登録できない" do
      @user = FactoryBot.build(:user) 
      @user.birthday = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Birthday can't be blank")
    end
  end
end
