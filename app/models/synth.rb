class Synth < ActiveRecord::Base
  belongs_to :synth_creator

  SYNTH_TYPES = ['software synth', 'hardware synth', 'software fx', 'hardware fx']
end
