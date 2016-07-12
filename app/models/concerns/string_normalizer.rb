require 'nkf'

module StringNormalizer
  extend ActiveSupport::Concern
  
  def normalize_as_name(text)
    NKF.nkf('-w -Z1', text).strip if text
  end
end