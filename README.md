The Mozilla and Eclipse Defect Tracking Dataset
============================================

Welcome to the _Mozilla and Eclipse Defect Tracking Dataset_ containing over 47000 and 168000 of bugs reported for Eclipse and Mozilla respectively. Besides the single latest snapshot of a bug report, we also provide all the changes each bug has gone through in its lifetime. Below, you can find additional information about the dataset.

# Table of Contents
- [Description](#description)
	- [Model of the Dataset](#model-of-the-dataset)
	- [Structure of the dataset](#structure-of-the-dataset)

# Description
The Eclipse and Mozilla Defect Tracking Dataset contains bug reports reported for 4 popular products of both Eclipse and Mozilla. For Eclipse and Mozilla respectively, the following products are selected along with some basic numbers:


**Product**    	| **No. of Bugs**	| **No. of Components**
----------------|-------------------|----------------------
Platform		|	24775			|	22
JDT				|	10814			|	6
CDT				|	5640			|	20
GEF				|	5655			|	5

**Product**		| **No. of Bugs**	| **No. of Components**
----------------|-------------------|----------------------
Core			|	74292			|	137
Firefox			|	69879			|	47
Thunderbird		|	19237			|	23
Bugzilla		|	4616			|	21


For each attribute, we compiled a list of updates denoting the different "changes" that have been performed over the entire lifetime of the respective report. For each such change, we include the timestamp when the attribute was updated (the _when_) and the new value of the respective bug report attribute (the _what_).

## Structure of the Dataset
<img align="center" width="60%" src="https://raw.github.com/ansymo/msr2013-bug_dataset/master/figures/dataset-structure.png">

As we see above, the _Eclipse and Mozilla Defect Tracking Dataset_ is bundled as a set of XML files. Both Eclipse and Mozilla have a separate directory consisting of the products we previously selected. Each product directory contains for each _bug attribute_ an XML file containing the corresponding information. We distinguish _reports.xml_ from the other XMl files: _reports.xml_ contains the attributes that remain unchanged after reporting while the other XML files provide all the updates occurred for the particular attribute. We also show an example of the updates that occurred for the 
# Citing us

> Ahmed Lamkanfi, Javier P\'erez, Serge Demeyer, "The Eclipse and Mozilla Defect Tracking Dataset: a Genuine Dataset for Mining Bug Information" in _MSR '13: Proceedings of the 10th Working Conference on Mining Software Repositories_, May 18-–19, 2013. San Francisco, California, USA.

# Please contribute



