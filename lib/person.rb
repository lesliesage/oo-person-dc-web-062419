# get paid/receive payments
# take a bath
# call a friend
# start a conversation
# state if they are happy and/or clean
# our code goes here


# First you need to create a person class that is initialized with a name that cannot be changed.
# Each instance of class Personshould be able to remember their name
# Each instance of class Person should start with $25 in their bank accounts
# Each instance of class Person should start with eight happiness points
# Each instance of class Person should start with eight hygiene points
# The happiness and hygiene points should be able to change, however the maximum and minimum points for both happiness and hygiene should be 10 and 0 respectively
# The amount in the bank account should also be able to change, though it has no max or min.

class Person
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def zero_to_ten_setter(num)
    if num > 10
      10
    elsif num < 0
      0
    else
      num
    end
  end

  def happiness=(new_happiness)
    @happiness = zero_to_ten_setter(new_happiness)
  end

  def hygiene=(new_hygiene)
    @hygiene = zero_to_ten_setter(new_hygiene)
  end

  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(salary_amount)
    @bank_account += salary_amount
    "all about the benjamins"
  end

  def take_bath
    @hygiene=(@hygine+4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    temp_happiness = @happiness + 2
    happiness=temp_happiness
    @hygine -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend

  end

  def start_conversation

  end
end
