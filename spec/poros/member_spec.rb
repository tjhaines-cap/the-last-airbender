require 'rails_helper'

RSpec.describe Member do

  it "exists and has readable attributes" do
    data = {:_id=>"5cf5679a915ecad153ab68fd",
    :allies=>["Ozai"],
    :enemies=>["Earth Kingdom"],
    :name=>"Chan (Fire Nation admiral)",
    :affiliation=>"Fire Nation Navy"}
    member = Member.new(data)

    expect(member).to be_a(Member)
    expect(member.allies).to eq(["Ozai"])
    expect(member.enemies).to eq(["Earth Kingdom"])
    expect(member.name).to eq("Chan (Fire Nation admiral)")
    expect(member.affiliation).to eq("Fire Nation Navy")
  end
end