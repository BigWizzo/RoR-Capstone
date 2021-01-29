module ApplicationHelper
  def count_clock
    count = 0
    # @all.each do |subject|
      @clockings.each do |clocking|
        count += clocking.duration
      end
    # end
    count
  end

  def count_external_clock
    count = 0
    @external.each do |subject|
      subject.clockings.each do |clocking|
        count += clocking.duration if subject.title == 'External'
      end
    end
    count
  end
end
