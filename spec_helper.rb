
class TeamMate
  attr_reader :name
  def initialize(name)
    @name = name
  end
  def onboard?
    false
  end
  def to_s
    name
  end
end

RSpec.configure do |c|
  c.alias_example_to :conversation
  c.alias_example_to :meeting
  c.alias_example_to :stakeholder

  c.before(:each) do |example|
    sleep(2)
    expect(TeamMate.new(example.description)).to be_onboard, "#{example.description} is not onboard 🙍🏼‍♀️"
  end
end
