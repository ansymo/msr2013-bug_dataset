Swearing and Cursing in Bug Reports
-----------------------------------

We demonstrate how the _Mozilla and Eclipse Defect Tracking Dataset_ can be used in your experiments where we look for reporters that describe bugs in a swearing manner.

For this purpose, we write a simple Ruby script that parses the dataset and subsequently use a regular expression to retrieve the swearing and cursing summaries. The resulting summaries include the following summaries:

- _Mozilla developers are fucking bastards_
- _same old shit..._
- _DEAR FUCKING PROGRAMMERS OF FUCKING FIREFOX._
- _Your browser sucks serious ass -- multiple crashes, doesn't matter what the f'ing URL is_
- _shit is in french_
- and much more swearing...

### The example

* First, we parse the dataset using the fast [Nokogiri](http://nokogiri.org/) XML library
	
* Next, we iterate over all the summaries of the bug reports and retrieve the initial version of the summary

	for bug_id in dataset['short_desc'].keys
		summary = dataset['short_desc'][bug_id].first["what"]
	end

* Subsequently, we apply a regular expression on the summary and the display it when it matches
	
	regex = /(?i)\b(wtf|wth|omfg|hell|ass|bitch|bullshit|bloody|fucking?|shit+y?|crap+y?)\b|\b(fuck|damn|piss|screw|suck)e?d?\b/
	puts summary if (summary.match regex) != nil

### Running the example
1. Install Ruby (v1.9) and Rubygems on your system
2. Install bundler on your system and run the following command `bundle install`
3. run the script: `ruby swearing.rb`