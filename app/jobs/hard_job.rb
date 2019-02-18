class HardJob < ApplicationJob
  depends_on :list
  class_timeout 30 # 300s or 5m, current Lambda max is 15m

  # Case 1 - existing queue - comment out with your own queue
  # To create queue:
  #    aws sqs create-queue --queue-name hello-queue
  # sqs_event "hello-queue"
  # def dig
  #   puts "dig #{JSON.dump(event)}"
  # end

  # Case 2 - specific dynamic sqs queue
  sqs_event :generate_queue, queue_properties: {maximum_message_size: 262144}
  def lift
    puts "lift #{JSON.dump(event)}"
  end

  sqs_event "!Ref Waitlist"
  def fix
    puts "fix #{JSON.dump(event)}"
  end

end
