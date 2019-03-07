# frozen_string_literal: true

class NilClass
  def to_human
    ToHuman::Humanize.new(:nil).call
  end
end
