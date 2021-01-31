module ApplicationHelper
  def count_clock
    count = 0
    @clockings.each do |clocking|
      count += clocking.duration
    end
    count
  end

  def user_name
    current_student.username if student_signed_in?
  end
end
