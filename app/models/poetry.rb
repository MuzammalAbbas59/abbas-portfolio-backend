class Poetry < ApplicationRecord
  enum poetry_type: { nazam: 'nazam', ghazal: 'ghazal' }
end
