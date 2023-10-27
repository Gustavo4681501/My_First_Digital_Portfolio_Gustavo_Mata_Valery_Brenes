class User < ApplicationRecord
    enum role:[:regular, :admin]

    devise :database_authenticatable, :registerable,
            :recoverable, :rememberable, :validatable
end
