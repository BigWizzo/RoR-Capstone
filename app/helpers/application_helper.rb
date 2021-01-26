module ApplicationHelper
  def count_clock
    count = -1
    @subjects.each do |subject|
      subject.clockings.each do |clocking|
        count = count + clocking.duration
      end
    end
    count
  end
end
