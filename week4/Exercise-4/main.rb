# Exercise 4: Errors and Wrapping APIs
# Name: Curtis Kauer


# Exercise 4 Part 1 (Exception Handling)

class MentalState
  def auditable?
    # true if the external service is online, otherwise false
  end
  def audit!
    # Could fail if external service is offline
  end
  def do_work
    # Amazing stuff...
  end
end

def audit_sanity(bedtime_mental_state)
  begin
    bedtime_mental_state.auditable?
  rescue
    puts "error"
  else
    mental_state = bedtime_mental_state.audit!.ok?
    MorningMentalState.new(mental_state)
end

new_state = audit_sanity(bedtime_mental_state)

# Exercise 4 Part 2 (Don't Return Null / Null Object Pattern)

class BedtimeMentalState < MentalState ; end

class MorningMentalState < MentalState ; end

def audit_sanity(bedtime_mental_state)
  bedtime_mental_state = check_bedtime_mental_state
  if bedtime_mental_state.audit!.ok?
    MorningMentalState.new(:ok)
  else 
    MorningMentalState.new(:not_ok)
  end
end

def check_bedtime_mental_state(mental_state)
  mental_state = BedTimeMentalState.new() if mental_state == nil
  mental_state
end

new_state = audit_sanity(bedtime_mental_state)
new_state.do_work

# Exercise 4 Part 3 (Wrapping APIs)

require 'candy_service'

def candyMachinePrepare(machine)
  machine.prepare
end

def candyMachineMake(machine)
  machine.ready if !machine.ready
  machine.make!
end

machine = CandyMachine.new

candyMachinePrepare(machine)

candyMachineMake(machine)