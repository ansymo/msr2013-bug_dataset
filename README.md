The Mozilla and Eclipse Defect Tracking Dataset
===============================================

Welcome to the _Mozilla and Eclipse Defect Tracking Dataset_ containing over 47.000 and 168.000 of bugs reported for Eclipse and Mozilla respectively. Besides the single latest snapshot of a bug report, we also provide all the changes each bug has gone through in its lifetime. Below, you can find additional information about the dataset.

# Table of Contents
- [Examples](#examples)
- [Description](#description)
	- [Model of the Dataset](#model-of-the-dataset)
	- [Structure of the dataset](#structure-of-the-dataset)
- [We need you!](#we-need-you)
- [Citing us](#citing-us)

# Examples
We demonstrate the usage of the dataset using the following examples:
- [people swearing in bug reports](examples/swearing)

# Description
The Eclipse and Mozilla Defect Tracking Dataset contains bug reports reported for 4 popular products of both Eclipse and Mozilla. For Eclipse and Mozilla respectively, the following products are selected along with some basic numbers:


**Product**    	| **No. of Bugs**	| **No. of Components**
----------------|-------------------|----------------------
Platform		|	24.775			|	22
JDT				|	10.814			|	6
CDT				|	5.640			|	20
GEF				|	5.655			|	5

**Product**		| **No. of Bugs**	| **No. of Components**
----------------|-------------------|----------------------
Core			|	74.292			|	137
Firefox			|	69.879			|	47
Thunderbird		|	19.237			|	23
Bugzilla		|	4.616			|	21


For each attribute, we compiled a list of updates denoting the different "changes" that have been performed over the entire lifetime of the respective report. For each such change, we include the timestamp when the attribute was updated (the _when_) and the new value of the respective bug report attribute (the _what_).

## Structure of the Dataset
<img align="center" width="60%" src="https://raw.github.com/ansymo/msr2013-bug_dataset/master/figures/dataset-structure.png">

As we see above, the _Eclipse and Mozilla Defect Tracking Dataset_ is bundled as a set of XML files. Both Eclipse and Mozilla have a separate directory consisting of the products we previously selected. Each product directory contains for each _bug attribute_ an XML file containing the corresponding information. We distinguish _reports.xml_ from the other XMl files: _reports.xml_ contains the attributes that remain unchanged after reporting while the other XML files provide all the updates occurred for the particular attribute. We also show an example of the updates that occurred for the _short\_desc_ bug attribute.

# We need you!
We need you to make the dataset more useful for researchers. If you have any questions and/or suggestions to improve the dataset, don't hesitate to contact us or submit an _Issue_ on this page. In our case, we are particularly interested in the following things:

- Inclusion of additional projects
- Integration of the bug dataset with other repositories, e.g.: _CVS/SVN_ repositories, _email communication_, ...
- Contribution of your results and/or scripts of your experiment to this Github repository
- References to your papers (Bibrefs!) where this dataset has been used


# Citing us
Please refer to our work when this dataset was relevant to your paper.

	@inproceedings{LamkanfiMSR13,
		author    = {Ahmed Lamkanfi and Javier Perez and Serge Demeyer},
		title     = {The Eclipse and Mozilla Defect Tracking Dataset: 
			a Genuine Dataset for Mining Bug Information},
		booktitle = {MSR '13: Proceedings of the 10th Working Conference on Mining Software Repositories, 
			May 18-–19, 2013. San Francisco, California, USA},
		year      = {2013},
	}

