require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'バリデーション' do
    let(:valid_user) do
      User.new(
        username: 'testuser',
        password: 'password',
        password_confirmation: 'password'
      )
    end

    it '有効なユーザーは保存できること' do
      expect(valid_user).to be_valid
    end

    describe 'ユーザー名' do
      it '必須であること' do
        user = valid_user
        user.username = nil
        expect(user).not_to be_valid
      end

      it '6文字以上10文字以下であること' do
        user = valid_user
        user.username = 'a' * 5
        expect(user).not_to be_valid

        user.username = 'a' * 11
        expect(user).not_to be_valid

        user.username = 'a' * 6
        expect(user).to be_valid
      end

      it '英数字と記号のみ使用可能であること' do
        user = valid_user
        user.username = 'テストユーザー'
        expect(user).not_to be_valid

        user.username = 'test@user'
        expect(user).to be_valid
      end

      it '一意であること' do
        valid_user.save
        duplicate_user = valid_user.dup
        expect(duplicate_user).not_to be_valid
      end
    end

    describe 'パスワード' do
      it '必須であること' do
        user = valid_user
        user.password = nil
        user.password_confirmation = nil
        expect(user).not_to be_valid
      end

      it '6文字以上10文字以下であること' do
        user = valid_user
        user.password = 'a' * 5
        user.password_confirmation = 'a' * 5
        expect(user).not_to be_valid

        user.password = 'a' * 11
        user.password_confirmation = 'a' * 11
        expect(user).not_to be_valid

        user.password = 'a' * 6
        user.password_confirmation = 'a' * 6
        expect(user).to be_valid
      end

      it '英数字と記号のみ使用可能であること' do
        user = valid_user
        user.password = 'パスワード'
        user.password_confirmation = 'パスワード'
        expect(user).not_to be_valid

        user.password = 'pass@word'
        user.password_confirmation = 'pass@word'
        expect(user).to be_valid
      end

      it 'パスワード確認と一致すること' do
        user = valid_user
        user.password_confirmation = 'different'
        expect(user).not_to be_valid
      end
    end
  end
end 