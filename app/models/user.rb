class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_one :profile
  has_many :posts
  has_many :jobs
  has_many :competitions

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :authentication_keys => [:login]

validates :username,
          :presence => true,
          :uniqueness => {
              :case_sensitive => false
              
            }


            validate :validate_username


# ONLY on this second validation still allows a user to choose
# someone else's valid email address as a username, as long as
# that email is not yet associated with an account. This should
# therefore be used only as a backup validation.



  def validate_username
    if User.where(email: username).exists?
    errors.add(:username, :invalid)
    end
  end

  def login=(login)
    @login = login
  end

  def login
    @login || self.username || self.email
  end

  def self.find_for_database_authentication(conditions)
     where(:username => conditions[:email]).first || where(:email => conditions[:email]).first
   end

end
