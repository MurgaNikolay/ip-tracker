require 'spec_helper'
require_relative '../../../../apps/web/controllers/home/stats'

describe Web::Controllers::Home::Stats do
  let(:action) { Web::Controllers::Home::Stats.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    response[0].must_equal 200
  end
end
