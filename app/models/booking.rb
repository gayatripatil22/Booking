class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :notifications, as: :notifiable
  enum status: {"pending":0,"confirmed":1,"cancelled":2}
  after_create :create_notification

  private
    def create_notification
      self.notifications.create(message:"#{self.user.name}  booking ")
    end
  end