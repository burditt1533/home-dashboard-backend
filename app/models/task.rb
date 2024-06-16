class Task < ApplicationRecord
  after_initialize :purge_stale_task

  belongs_to :room

  def purge_stale_task
    if (self.is_complete && is_stale)
      self.update({ is_complete: false, date_completed: nil })
    end
  end

  def is_stale 
    lib = [1.day.ago, 1.week.ago, 1.month.ago, 3.months.ago, 6.months.ago]
    # self.date_completed < lib[task.level - 1]
    self.date_completed < 1.hour.ago unless !self.date_completed
  end
end
