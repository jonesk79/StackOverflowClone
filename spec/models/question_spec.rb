require 'spec_helper'

describe Question do
  it { belong_to :users }

  it { validate_presence_of :question }
  it { validate_presence_of :user_id }
end
