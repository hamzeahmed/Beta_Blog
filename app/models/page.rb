class Page < ActiveRecord::Base
  validate :title , presence :true , length :{Minimuim 3}
end