class AttachedMember < ActiveRecord::Base
    has_many :memberships
end