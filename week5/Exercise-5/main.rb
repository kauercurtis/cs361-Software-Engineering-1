# Name: Curtis Kauer
# Exercise 5 - Classes

class LaunchDiscussionWorkflow

    def initialize(discussion, host, participants)
      @discussion = discussion
      @host = host
      @participants = participants
    end
  
    # Expects @participants array to be filled with User objects
    def run
      return unless valid?
      run_callbacks(:create) do
        ActiveRecord::Base.transaction do
          discussion.save!
          create_discussion_roles!
          @successful = true
        end
      end
    end
  
    # ...
  
end
  
class ParticipantGroup
    
    def initialize(participants_email_string)
        @participants_email_string = participants_email_string
        @participants = []
    end

    def generate_participant_users_from_email_string
        return if @participants_email_string.blank?
        @participants_email_string.split.uniq.map do |email_address|
          User.create(email: email_address.downcase, password: Devise.friendly_token)
        end
    end

end
 
discussion = Discussion.new(title: "fake", ...)
host = User.find(42)

participants = "fake1@example.com\nfake2@example.com\nfake3@example.com"
group = ParticipantGroup.new(participants)
group.generate_participant_users_from_email_string

workflow = LaunchDiscussionWorkflow.new(discussion, host, group.participants)
workflow.run