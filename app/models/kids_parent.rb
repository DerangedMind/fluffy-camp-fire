class KidsParent < ApplicationRecord
  belongs_to :kid
  belongs_to :parent
end
