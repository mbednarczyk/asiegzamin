FactoryGirl.define do 
  factory :gist do 
    snippet "System.out.println(java)"
    lang "java"  
    description "Sample of Java" 
  end

  factory :invalid_gist, parent: :gist do 
    snippet nil 
    lang nil 
    description nil 
  end 
end 