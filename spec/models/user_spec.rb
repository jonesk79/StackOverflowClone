require 'spec_helper'

describe User do
  it { have_secure_password }

  it { validate_uniqueness_of :email }

  it { validate_presence_of :email }
  it { validate_presence_of :password_digest}

  it { have_many :questions }
end
