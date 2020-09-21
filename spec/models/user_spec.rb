require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do

    it "すべての情報が正しいフォーマットで入力されてていればユーザー登録できる"　do
      @user = FactoryBot.build(:user)
      expect(@user).to be_vaild
    end

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

    it "メールアドレスが登録済みであるとユーザー登録できない" do
      @user.save
      another_user = FactoryBot.build(:user)
      another_user.email = @user.email
      another_user.valid?
      expect(another_user.errors.full_messages).to include("Email has aleady been taken")
    end

    it "メールアドレスに@が含まれていないとユーザー登録できない" do
    @user = FactoryBot.build(:user) 
    expect(another_user.errors.full_messages).to include("Email has aleady been taken")
  end

  it "パスワードが5文字以下だとユーザー登録できない" do
    @user = FactoryBot.build(:user) 
    @user.password = "a1234"
    expect(another_user.errors.full_messages).to include("Password is too long (minimum is 6 characters)")
  end
  it "パスワードが英字のみだとユーザー登録できない" do
  @user = FactoryBot.build(:user) 
  @user.password = "asdfgh"
  expect(@user.errors.full_messages).to include("Password can't be blank")
  end

  it = "パスワードが数字のみだとユーザー登録できない" do
  @user = FactoryBot.build(:user) 
  @user.password = "123456"
  expect(@user.errors.full_messages).to include("Password can't be blank")
  end

    it "姓が全角（漢字・ひらがな・カタカナ）以外だとユーザー登録できない" do
  @user = FactoryBot.build(:user) 
  @user.name_sei = "tanaka"
  @user.valid?
  expect(@user.errors.full_messages).to include("Name sei can't be blank")
  end

 it "名が全角（漢字・ひらがな・カタカナ）以外だとユーザー登録できない" do
  @user = FactoryBot.build(:user) 
  @user.name_mai = "taro"
  @user.valid?
  expect(@user.errors.full_messages).to include("Name sei can't be blank")
  end

  it "姓のフリガナが全角（カタカナ）以外だとユーザー登録できない"
  @user = FactoryBot.build(:user) 
  @user.kana_sei = "たなか"
  @user.valid?
  expect(@user.errors.full_messages).to include("Kana sei can't be blank")
  end

it "名のフリガナが全角（カタカナ）以外だとユーザー登録でき" do
  @user = FactoryBot.build(:user) 
      @user.kana_mei = "たろう"
      @user.valid?
      expect(@user.errors.full_messages).to include("Kana sei can't be blank")
    end
  end
end
