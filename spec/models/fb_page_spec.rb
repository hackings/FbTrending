require 'spec_helper'

describe FbPage do
  it{
    should validate_presence_of(:business_name)
    should validate_presence_of(:facebook_url)
    should validate_presence_of(:email)

    should allow_value("test@example.com").for(:email)
    should_not allow_value("no_email").for(:email)
  }


end
