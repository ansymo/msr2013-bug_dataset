The Mozilla and Eclipse Defect Tracking Dataset
===============================================

Welcome to the **Mozilla and Eclipse Defect Tracking Dataset**: a dataset with over 200.000 reported bugs extracted from the _Eclipse_ and _Mozilla_ projects (respectively 47.000 and 168.000 reported bugs). Besides providing a single snapshot of a bug report, we also include all the incremental modifications as performed during the lifetime of the bug report. Below, you can find additional information about the dataset.

# Table of Contents
- [Description](#description)
- [Structure of the dataset](#structure-of-the-dataset)
- [Examples](#examples)
- [We need you!](#we-need-you)
- [Citing us](#citing-us)



# Description
The **Eclipse and Mozilla Defect Tracking Dataset** contains the bug reported for 4 popular products retrieved from both Eclipse and Mozilla. Below, we show the selected products along with some basic information for _Eclipse_ and _Mozilla_ respectively.

**Product**    	 | **Number of components**| **Number of reports**
:----------------|:-----------------------:|:------------------------:
**Platform**		 |	22                     |	24.775
**JDT**			     |	6                      |	10.814
**CDT**				   |	20                     |	5.640
**GEF**				   |	5                      |	5.655

**Product**    	 | **Number of components**| **Number of reports**
:----------------|:-----------------------:|:------------------------:
**Core**			   |	137                    |	74.292
**Firefox**			 |	47                     |	69.879
**Thunderbird**	 |	23                     |	19.237
**Bugzilla**		 |	21                     |	4.616


As an end-user of software application reports a malfunctioning in a software application, the end-user provides contextual information concerning the observed bug. The information provided in a bug report can be modified during its lifetime. There are several reasons why changing/updating the information of a reported bug is desirable:
* a report is incomplete and thus does not include vital information to fix the bug
* a report provides inaccurate information
* an update of the current development state, e.g., the status of a bug report changes from **_new_** to **_assigned_** and subsequently to **_closed_**

With each report in the dataset, a list of modifications provides the full update history. 
<!--For each such change, we include the timestamp **_when_** the attribute was updated and **_what_** the new value of the respective bug report attribute.-->

## Structure of the Dataset
<img align="center" width="60%" src="https://raw.github.com/ansymo/msr2013-bug_dataset/master/figures/dataset-structure.png">

As we see above, the _Eclipse and Mozilla Defect Tracking Dataset_ is bundled as a set of XML files. Both Eclipse and Mozilla have a separate directory consisting of the products we previously selected. Each product directory contains for each _bug attribute_ an XML file containing the corresponding information. We distinguish _reports.xml_ from the other XMl files: _reports.xml_ contains the attributes that remain unchanged after reporting while the other XML files provide all the updates occurred for the particular attribute. We also show an example of the updates that occurred for the _short\_desc_ bug attribute.


# Examples
We demonstrate the usage of the dataset using the following examples:
- [people swearing in bug reports](examples/swearing)



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

