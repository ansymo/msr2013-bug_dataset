require 'rubygems'
require 'bundler/setup'
Bundler.require

#parse and retrieve the summaries of bug reports
doc = Nokogiri::XML(File.open("../data/short_desc.xml")) do |config|
  config.noblanks
end

dataset = {"short_desc" => {}}
doc.xpath('//short_desc/report').each do |report|
  bug_id = report['id']
  dataset["short_desc"][bug_id] = []
  for update in report.children
    update_when = update.children[0].text
    update_what = update.children[1].text
    dataset['short_desc'][bug_id] << {"when" => update_when, "what"=> update_what}
  end
end

#iterate over all summaries in the dataset and find curse words in the summary (as it was initially reported) using regular expressions
for bug_id in dataset['short_desc'].keys
  summary = dataset['short_desc'][bug_id].first["what"]
  regex = /(?i)\b(wtf|wth|omfg|hell|ass|bitch|bullshit|bloody|fucking?|shit+y?|crap+y?)\b|\b(fuck|damn|piss|screw|suck)e?d?\b/
  puts summary if (summary.match regex) != nil
end