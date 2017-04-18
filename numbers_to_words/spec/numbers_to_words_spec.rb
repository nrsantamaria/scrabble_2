require('rspec')
require('numbers_to_words')

describe("String#numbers_to_words") do
  it("if input is 1, return one") do
    expect("1".numbers_to_words()).to(eq("one"))
  end
  # it("if input is 10, return ten") do
  #   expect("10".numbers_to_words()).to(eq("ten"))
  # end
  # it("if input is 15, return fifteen") do
  #   expect("15".numbers_to_words()).to(eq("fifteen"))
  # end
  it("if input is 25, return twenty-five") do
    expect("25".numbers_to_words()).to(eq("twenty five"))
  end
  it("if input is 999, return nine hundred ninety nine") do
    expect("999".numbers_to_words()).to(eq("nine hundred ninety nine"))
  end
  it("if input is 7925, return seven thousand nine hundred twenty five") do
    expect("7925".numbers_to_words()).to(eq("seven thousand nine hundred twenty five"))
  end
  # it("if input is 17915, return seventeen thousand nine hundred fifteen") do
  #   expect("17915".numbers_to_words()).to(eq("seventeen thousand nine hundred fifteen"))
  # end
end
