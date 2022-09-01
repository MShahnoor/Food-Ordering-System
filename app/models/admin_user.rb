class AdminUser < ApplicationRecord
  include DeviseInvitable::Inviter

  devise :database_authenticatable,:recoverable, :rememberable, :validatable
end
