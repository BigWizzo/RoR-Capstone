module ApplicationHelper
  def count_clock
    count = 0
    @clockings.each do |clocking|
      count += clocking.duration
    end
    count
  end
end
