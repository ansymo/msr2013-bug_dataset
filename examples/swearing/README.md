Swearing and Cursing in Bug Reports
-----------------------------------

We examine the summaries of reported bugs and search for indications of swearing and cursing as an example of the usage of the _Mozilla and Eclipse Defect Tracking Dataset_. For this purpose, we write a simple Ruby script that parses the dataset and subsequently use a regular expression to retrieve the swearing and cursing summaries. The resulting script can be found in _swearing.rb_ The resulting summaries include the following summaries:

> Mozilla developers are fucking bastards
> same old shit...
> DEAR FUCKING PROGRAMMERS OF FUCKING FIREFOX.
> shit is in french

# The example

1. First, we parse the dataset using the Nokogiri library
	
2. Iterating over all the summaries of the bug reports
	for bug_id in dataset['short_desc'].keys
		...
	end
3. Subsequently, we apply a regular expression on the summary
	puts summary if (summary.match /(?i)\b(wtf|wth|omfg|hell|ass|

# Running the example
1. Install Ruby (v1.9) and Rubygems on your system
2. Install bundler on your system
3. run the following command
