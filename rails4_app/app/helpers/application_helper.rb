module ApplicationHelper
	require 'pullreview/coverage_reporter'
	PullReview::CoverageReporter.start
end
