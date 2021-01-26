module ApplicationHelper
  def count_subject_clock
    count = 0
    @subjects.each do |subject|
      subject.clockings.each do |clocking|
        if subject.title != "External"
          count = count + clocking.duration
        end
      end
    end
    count
  end

  def count_external_clock
    count = 0
    @subjects.each do |subject|
      subject.clockings.each do |clocking|
        if subject.title == "External"
          count = count + clocking.duration
        end
      end
    end
    count
  end
end
