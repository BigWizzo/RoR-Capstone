module ApplicationHelper
  def count_subject_clock
    count = 0
    @subjects.each do |subject|
      subject.clockings.each do |clocking|
        count += clocking.duration if subject.title != 'External'
      end
    end
    count
  end

  def count_external_clock
    count = 0
    @subjects.each do |subject|
      subject.clockings.each do |clocking|
        count += clocking.duration if subject.title == 'External'
      end
    end
    count
  end

  def total_hours
    count_subject_clock + count_external_clock
  end
end
