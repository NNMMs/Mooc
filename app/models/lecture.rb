class Lecture < ActiveRecord::Base
 belongs_to :course
 belongs_to :user

 has_many :comments , dependent: :destroy

 mount_uploader :attachment, AttachmentUploader
 validates :content, presence: true
 acts_as_votable
end
