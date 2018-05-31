# frozen_string_literal: true

class TrueClass
	def to_human
		ToHuman::Humanize.new(:true).call
	end
end