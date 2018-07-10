class User < ApplicationRecord
  has_many :posts

  #引数に関連するユーザーが存在すればそれを返し、存在しまければ新規に作成する
  def self.find_or_create_from_auth_hash(auth_hash)
#OmniAuthで取得した各データを代入していく
    provider = auth_hash[:provider]
    uid = auth_hash[:id]
    nickname = auth_hash[:info][:nickname]
    image_url = auth_hash[:info][:image].to_s.sub('_normal', '')

    User.find_or_create_by(provider: provider, id: uid) do |user|
      user.nickname = nickname
      user.image_url = image_url
    end
  end
end
