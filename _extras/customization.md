---
layout: page
title: Customizing Your Workshop's Website
permalink: /customization/index.html
---

## Table of Content

* TOC
{:toc}

## GitHub Pages Workshop Website Setup

### Basics of GitHub Pages

* Markdown (some basic links)
* Edit in `gh-pages` branch
* More on GitHub Pages

### Files to edit

FIXME add picture of the files to edit

### Using the workshop template

1.  Log in to GitHub.
    You must be logged in for the remaining steps to work.

2.  On this page (<https://github.com/uic-library/workshop-template>),
    click on the green "Use this template" button (top right). **Please _do not fork this repository directly on GitHub._**

3.  Choose UIC Libray as the owner for the repository UNLESS you are just  practicing or practicing with the repository (Only Admins can delete repository's in the UIC Library's organization)

### Site URL

GitHub Pages sites are formatted as `https://GITHUB_USERNAME.github.io/REPOSITORY_NAME`.
For example, if the URL for your repository is `https://github.com/uic-library/Introduction-Digital-Scholarship`,
the URL for its website will be `http://uic-library.github.io/Introduction-Digital-Scholarship`.

* [] Set the site url: Your new website will be rendered at `https://uic-library.github.io/<workshop-repo-name>`. *To set the URL on GitHub, click the gear wheel button next to About on the right of the repository landing page. You will have to manually enter the url even though a repository at https://github.com/uic-library/workshop-repo-name/ will render automatically at the URL https://uic-library.github.io/<workshop-repo-name>.
* [] Add a description of the workshop
* [ ] [Add relevant topic tags to your lesson repository][cdh-topic-tags].

FIXME add image of this section


## Configuration File `_config.yml`

You should edit the `_config.yml` configuration file in the root directory of your workshop to
configure some site-wide variables and make the site function correctly:

* `title` - overall title for the workshop. If set (i.e., different from "Workshop Title" or empty),
  it will appear in the "jumbotron" (the gray box at the top of the page). This variable is also
  used for the title of the extra pages. The README contains [more information about extra pages](https://github.com/carpentries/workshop-template#creating-extra-pages).

* `life-cycle` - The current development state of the workshop. 
 Possible values: "pre-alpha", "alpha", "beta", "stable"
 "pre-alpha" for the beginning stages of designing a workshop
 "alpha" after content has been added, but needs to be reviewed or tested 
 "beta" ready to teach for the first time, editing stage after first taught
 "stable" workshop has been taught and modifications made if necessary, little
 to no editing required at this stage.

You should not need to modify any of the other variable values in `_config.yml`.

## Home Page (`index.md`)

Your workshop's home page lives in `index.md`,
which must define the values below in its header.

### For online workshops

If the workshop is online, follow the same instructions as above with the
following modifications:

### Home Page: Description

### Home Page: Goals

### Home Page: Pre-requisites

### Home Page: Workshop Content

By default, the template displays the typical schedule for your workshop based on
the values of the variables set in the `_config.yml`. If you need to  make
minor modifications to this schedule, you can edit the `schedule.html` file
found in the sub-folder of the `_includes` folder that matches the type of
workshop you will be teaching  (`dc`, `lc`, or `swc`).

If you wish to create your own custom schedule, an empty template is available in
`_includes/custom-schedule.html`. In this file, we provide the structure for a
4-day workshop as it is often used for online workshops. To use this custom
schedule instead of the one provided by default in the template, delete the
block of code found under the "Schedule" header in the `index.md` file and 
replace it with`{% raw %}{% include custom-schedule.html %}{% endraw %}`.

The schedule is formatted using a table. If you would like to learn more about
how to write tables in HTML, here is an [HTML table overview from
Mozilla](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/table) and
the [HTML tables chapter from w3schools](https://www.w3schools.com/html/html_tables.asp).

For pilot workshops, some placeholder text including a link to the lesson homepage
will be displayed instead of a schedule table.
The lesson homepage will contain estimated timings for teaching the lesson.
Use the approach described above for `_includes/custome-schedule.html`
if you would like to create a schedule table to replace this text.

### Home Page: Recording

* [ ] add the workshop recording by navigating to where it's located in Box, copy the ID from the video sharelink (see image below) and paste into the BoxId field in the yaml in index.md
![Copy ID from Box Share Link for Recordings](fig/sharelink-boxId.PNG)
  * Alternatively, if there is no recording ready to post, comment out the recording section with `{% comment %}` and `{% endcomment %}` until there is a recording to add.

### Home Page: Survey

Change out the survey link each semester so the correct survey is linked on the page.

### Home Page: Next up

Link related workshops that students can take next with a link []():
i.e. [Next Workshop](https://uic-library.github.io/next-workshop)

## Setup Page

#### If you need to remove tools

If you need to remove any of the instructions for the default
set of tools,
you can delete lines that include these instructions in
the `_includes/swc/setup.html` file.

#### If you need to add tools

If you need to add installation instructions for other tools,
we provide installation instructions for SQL and OpenRefine.
To make them appear on your workshop website,
you can move the `{% raw %}{% include %}{% endraw %}` statements outside the comment
block in `_includes/swc/setup.html`.

If you need to add installation instructions for other tools,
you will need to write your own. You can use installation instructions
for other tools located in the `_includes/install_instructions/` folder
as examples.

### Data Carpentry workshops

For Data Carpentry workshops,
installation instructions live on the workshop overview page for each curriculum.
Instead of including installation instructions in the workshop template,
the workshop template includes links to these instructions.
The correct link will be displyed
when using the appropriate combination of values
for the `curriculum`  and `flavor` variables
in the `_config.yml` file.

### Library Carpentry workshops

By default, Library Carpentry workshop websites
include installation instructions for the Bash shell and Git.

You may need to add installation instructions for additional tools
you will be using during your workshop
by editing the `_includes/lc/setup.html` file.
You can either write your own instructions using the ones
provided in `_includes/lc/setup.html` as an example,
or, if you are using tools that already have installation instructions
provided for Software Carpentry,
you can add `{% raw %}{% include install_instructions/<filename.html> %}{% endraw %}`
where `<filename.html>` needs to be replaced by one of the files
in the `_includes/install_instructions` folder.

## Episodes

* [ ] make copies to match the number of parts your workshop will have by creating
  copies of `\_episodes/01-introduction.md`. Files should be named according to 
  convention: `0X-short-title.md`.
* [ ] add content to "episode" pages, and style with markdown (see [Carpentries Lesson Example](https://carpentries.github.io/lesson-example/) for styling this template
* [ ] add images for your workshop content to the `fig` folder. Good convention
  is naming each image according to the episode file it's located in `0X-short-description.png`
    \*Note: you can use png and jpeg files, but they are case sensitive, so if your file is .PNG 
    make sure to use .PNG in the markdown image link. 
* [ ] add other workshop files to the `files` folder (i.e. data files, script files) \*large data files will need to be zipped or linked to outside source, file size limit is 25 MB.

## Additional Resources

## References

## Troubleshooting -- FIXME if transferring to UIC Library gets messed up

If for some reason,
such as the installation instructions having become disconnected
with the current lesson material,
you need to get changes from this repository
into the clone of it with your workshop page,
please follow the steps bellow:

1. Add the workshop-template repository as upstream:
    ~~~
    $ git remote add upstream https://github.com/carpentries/workshop-template.git
    ~~~
    {: .language-bash}

2. Fetch the data from upstream repository (also know as the workshop-template
    repository):
    ~~~
    $ git pull upstream
    ~~~
    {: .language-bash}

3. Address possible merge conflicts, and
    ~~~
    $ git commit -a
    ~~~
    {: .language-bash}

4. Push the changes to your repository on GitHub:
    ~~~
    $ git push origin gh-pages
    ~~~
    {: .language-bash}



