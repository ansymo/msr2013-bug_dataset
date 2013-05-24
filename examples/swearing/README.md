Swearing and Cursing in Bug Reports
-----------------------------------

We demonstrate how the _Mozilla and Eclipse Defect Tracking Dataset_ can be used in your experiments where we look for reporters that describe bugs in a swearing manner.

For this purpose, we write a simple Ruby script that parses the dataset and subsequently use a regular expression to retrieve the swearing and cursing summaries. The resulting summaries include the following summaries:

- _"Mozilla developers are fucking bastards"_
- _"same old shit..."_
- _"DEAR FUCKING PROGRAMMERS OF FUCKING FIREFOX."_
- _"Your browser sucks serious ass -- multiple crashes, doesn't matter what the f'ing URL is"_
- _"shit is in french"_
- _"browser.contentHandlers.* + gecko.handlerService.schemes.* + network.protocol-handler.* = WTF?"_
- _"If you don't stop hijacking my browser, I will stop using your browser and tell EVERYONE what a pain in the ass you all are."_
- and much more swearing...

### How we got there?

* First, we parse the dataset using the fast [Nokogiri](http://nokogiri.org/) XML library
	
* Next, we iterate over all the summaries of the bug reports and retrieve the initial version of the summary
```
	for bug_id in dataset['short_desc'].keys
		summary = dataset['short_desc'][bug_id].first["what"]
	end
```

* Subsequently, we apply a regular expression on the summary and the display it when it matches. We borrowed the regular expression from Gomez et al. (see their MSR 2013 paper entitled _"A Study of Innovation Diffusion Through Link Sharing on Stack Overflow"_)
```
	regex = /(?i)\b(wtf|wth|omfg|hell|ass|bitch|bullshit|bloody|fucking?|shit+y?|crap+y?)\b|\b(fuck|damn|piss|screw|suck)e?d?\b/
	puts summary if (summary.match regex) != nil
```

### Running it yourself!
1. Install Ruby (v1.9) and Rubygems on your system
2. Install Bundler on your system: `gem install bundler`
3. Install bundler on your system and run the following command `bundle install`
4. run the script: `ruby swearing.rb`