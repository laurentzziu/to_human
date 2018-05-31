# frozen_string_literal: true

class FalseClass
	def to_human
		ToHuman::Humanize.new(:false).call
	end
end