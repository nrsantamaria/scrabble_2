require('rspec')
require('numbers_to_words')

describe("String#numbers_to_words") do
  it("if input is 1, return one") do
    expect("1".numbers_to_words()).to(eq("one"))
  end
  it("if input is 15, return twenty-five") do
    expect("25".numbers_to_words()).to(eq("twenty five"))
  end
  it("if input is 25, return twenty-five") do
    expect("25".numbers_to_words()).to(eq("twenty five"))
  end
  it("if input is 537, return twenty-five") do
    expect("537".numbers_to_words()).to(eq("five hundred thirty seven"))
  end
end
