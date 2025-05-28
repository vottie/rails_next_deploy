class User < ApplicationRecord
  has_secure_password

  validates :username,
            presence: true,
            length: { minimum: 6, maximum: 10 },
            format: { with: /\A[a-zA-Z0-9!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]+\z/,
                     message: "は英数字と記号のみ使用可能です" },
            uniqueness: { case_sensitive: false }

  validates :password,
            presence: true,
            length: { minimum: 6, maximum: 10 },
            format: { with: /\A[a-zA-Z0-9!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]+\z/,
                     message: "は英数字と記号のみ使用可能です" },
            on: :create

  validates :password_confirmation,
            presence: true,
            on: :create
end 