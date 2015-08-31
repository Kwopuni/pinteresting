class Pin < ActiveRecord::Base
     belongs_to :user
     	validates :description, presence: true
  	validates :user_id, presence: true
     has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
     validates_attachment :image, presence: true,
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 5.megabytes }
     validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]                       
end

