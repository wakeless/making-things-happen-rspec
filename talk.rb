require_relative './spec_helper'

describe "using Sorbet" do
  conversation "convince Barry (your easiest co-worker to convince)" do
    have_discussion
    any_concerns?
    concern_1 + solution
    they_agree_its_a_good_idea!
  end

  conversation "convince Sally (your next easiest co-worker to convince)" do
    have_discussion
    address_concerns
    raise_any_concerns_that_david_had
    address_concerns
    they_agree_its_a_good_idea!
  end
end



describe "getting sorbet shipped in the team/organisation" do
  stakeholder "individual" do
    have_discussion
    any_concerns?
    they_agree_its_a_good_idea!
    specify { the_plan }
  end

  stakeholder "another individual" do
    have_discussion
    address_concerns
    raise_any_concerns_that_david_had
    address_concern
    they_agree_its_a_good_idea!
    specify { the_plan }
  end

  conversation "your team" do
    specify { the_plan }
  end

  meeting "another team" do
    specify { the_plan }
  end
end
