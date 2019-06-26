# your code goes here
require 'pry'
class Person 

 attr_reader :name
 attr_accessor :bank_account 

 

def initialize(name)
    @name = name 
    @bank_account = 25
    @happiness = 8
    @hygiene = 8 
        
    
    
    
end 

    def happiness=(happiness)
        if happiness >= 0 && happiness <= 10 
        
            @happiness = happiness
            
        elsif happiness < 0
            @happiness = 0
        elsif happiness > 10 
            @happiness = 10 
        end

    end 
    def hygiene=(hygien)

        if hygien >= 0 && hygien <= 10 
        
            @hygiene = hygien
            
        elsif hygien < 0
            @hygiene = 0
        else hygien > 10 
            @hygiene = 10 
        end

    end 
    def happiness
        @happiness
    end 
    def hygiene
        @hygiene 
    end 

    def happy?
        if @happiness > 7 
            true 
        else 
            false 
        end 
    end 

    def clean?
        if @hygiene > 7 
            true 
        else 
            false 
        end 
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
    
       self.hygiene = self.hygiene + 4

    "♪ Rub-a-dub just relaxing in the tub ♫"

     end

    def work_out
        self.hygiene = self.hygiene - 3
        self.happiness = self.happiness + 2
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        # binding.pry
        self.happiness = self.happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
def start_conversation(person, topic)
    #binding.pry
    x= 2
    if topic == "politics"
        
        #binding.pry
        self.happiness = self.happiness - 2
        person.happiness = person.happiness - 2
        "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        self.happiness = self.happiness + 1 
        person.happiness = person.happiness + 1
        "blah blah sun blah rain"
    elsif topic == "programming"

        "blah blah blah blah blah"
    end 



end 



end 

# rob = Person.new("Robert") 
# puts rob.take_bath
# puts rob.hygiene = 13
# puts rob.hygiene
# done