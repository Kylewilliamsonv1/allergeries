require ('pry')

class Allergen_score
  attr_reader(:allergy_array, :number)
  
  def initialize(number)
    @number = number
  end

  def allergy_calc
    allergen = {"cats" => 128, "pollen" => 64, "chocolate" => 32, "tomatoes" => 16, "strawberries" => 8, "shellfish" => 4, "peanuts" => 2, "eggs" => 1}
    @allergy_array = []
    allergen.map{ |a| 
      if a[1] <= @number
        @number = @number - a[1]
        @allergy_array.push(a[0])
      end   
      }
  end
end