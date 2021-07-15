require ('rspec')
require ('allergies')

describe ('#allergen') do
  it("tells you that you're allergic to eggs") do
    allergies = Allergen_score.new(1)
    allergies.egg_allergy
  expect(allergies.allergy_array).to(eq(["eggs"]))
  end
  it("tells you that you're allergic to eggs") do
    allergies = Allergen_score.new(150)
    allergies.egg_allergy
    expect(allergies.allergy_array).to(eq(["cats", "tomatoes", "shellfish", "peanuts"]))
  end
end