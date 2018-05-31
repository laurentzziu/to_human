# frozen_string_literal: true

module ToHuman
	class Humanize
		attr_reader :value, :human_value

		def initialize(value)
			@value = value
			@human_value = compute_human_value
		end

		def call
			@human_value
		end

		private

		# Ultra-basic implementation
		# More complex logic will be added, like support for localized strings
		def compute_human_value
			case @value
			when :false
				"No"
			when :true
				"Yes"
			when :nil
				"N/\A"
			end
		end
	end
end