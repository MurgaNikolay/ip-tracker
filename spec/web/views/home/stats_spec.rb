require 'spec_helper'
require_relative '../../../../apps/web/views/home/stats'

describe Web::Views::Home::Stats do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/home/stats.html.erb') }
  let(:view)      { Web::Views::Home::Stats.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #foo" do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
