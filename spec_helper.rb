
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

end
