Swearing and Cursing in Bug Reports
-----------------------------------

We demonstrate how the _Mozilla and Eclipse Defect Tracking Dataset_ can be used in your experiments where we look for reporters that describe bugs in a swearing manner.

For this purpose, we write a simple Ruby script that parses the dataset and subsequently use a regular expression to retrieve the swearing and cursing summaries. The resulting summaries include the following summaries:

- "_Mozilla developers are fucking bastards_"

- "_same old shit..._"

- "_DEAR FUCKING PROGRAMMERS OF FUCKING FIREFOX._"

- "_Your browser sucks serious ass -- multiple crashes, doesn't matter what the f'ing URL is_"

- "_shit is in french_"

- and much more swearing...

# The example

1. First, we parse the dataset using the fast [Nokogiri](http://nokogiri.org/) XML library
	
2. Next, we iterate over all the summaries of the bug reports

    for bug_id in dataset['short_desc'].keys
        ...
    end

3. Subsequently, we apply a regular expression on the summary
	puts summary if (summary.match /(?i)\b(wtf|wth|omfg|hell|ass|

# Running the example
1. Install Ruby (v1.9) and Rubygems on your system
2. Install bundler on your system and run the following command
    bundle install
3. run the following command
    ruby swearing.rb