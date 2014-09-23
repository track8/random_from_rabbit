require 'drb/drb'

rabbit = DRbObject.new_with_uri('druby://127.0.0.1:10101')
total_number_without_title = rabbit.total_slide_number - 1

loop do
  c = gets
  break if c.start_with? 'q'
  30.times do
    slide_number = rand(1..total_number_without_title)
    rabbit.move_to_if_can(slide_number)
  end
end
