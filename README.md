# The Digital Scholarship Hub Workshop Template

## How to use this template to set up a new workshop repository:

1.  Log in to GitHub.
    You must be logged in for the remaining steps to work.

2.  On this page (<https://github.com/carpentries/workshop-template>),
    click on the green "Use this template" button (top right). **Please _do not fork this repository directly on GitHub._**

3.  Choose UIC Libray as the owner for the repository UNLESS you are just  practicing or playing with the repository (Only Admins can delete repository's in the UIC Library's organization)

4. Please *do your work in the repository's `gh-pages` branch*, since that is what is automatically published as a website by GitHub.

5.  Please make the repository public internally to UIC Library, leave "Include all branches" unchecked, and click on "Create repository from template". You will be redirected to your new copy of the workshop template respository.

## Customizing Your Website (Required Steps)

There are two ways of customizing your website. You can either:

- edit the files directly in GitHub using your web browser
- clone the repository on your computer and update the files locally

### Updating the files on GitHub in your web browser

1.  Go into your newly-created repository, ensure you are on the gh-pages branch by clicking on the branch under the drop
    down in the menu bar (see the note below):

    ![screenshot of this repository's GitHub page showing the "Branch" dropdown menu expanded with the "gh-pages" branch selected](fig/select-gh-pages-branch.png?raw=true)
2. Use the pencil icon to go into editing mode and make your edits:
    ![screenshot showing the edit icon in GitHub Pages](fig/edit-index-file-menu-bar.png)

\*Note working on your workshop online is prone to losing edits due to internet outages. Either save very frequently, or edit locally.

### Working locally

#### Command Line

If you are already familiar with Git, you can clone the repository to your desktop, edit your workshop locally, and push your changes back to the repository.

```shell
git clone https://github.com/uic-library/workshop-repo-name/
```

In order to view your changes once you are done editing, if you have bundler installed (see the
[installation instructions](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/testing-your-github-pages-site-locally-with-jekyll), you can preview your site locally with:

```shell
make serve
```
for Macs or 

```shell
bundle exec jekyll serve
```
for Windows

and go to <http://localhost:4000> to preview your site.

If there are any issues with the edits you made, you will get an error message from jekyll. [See common jekyll error messages here](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/troubleshooting-jekyll-build-errors-for-github-pages-sites#file-does-not-exist-in-includes-directory) to help with troubleshooting.  

Once you are satisfied with the edits to your site, commit and push the changes to your repository.
A few minutes later, you can go to the GitHub Pages URL for your workshop site and view it. 

#### GitHub Desktop App

Alternatively, you can [download and install the GitHub Desktop application](https://desktop.github.com/), though you won't be able to preview edits as you would with the command line. 

\* Highly recommend becoming comfortable using Git in command line at least for adding, commiting, previewing, and pushing changes. It can take a long time for a push to load on GitHub oneline and to be able to see the change to the website.  


## How to set up your new workshop in this template

Before you begin developing your new lesson,
here are a few things you need to do:

* [ ] Decide on a title for your new lesson!
  Once you've chosen a new title, you can set the value for `lesson_title`
  in [`_config.yml`](_config.yml)
* [ ] Add the URL to your built lesson pages to the repository description\*
* [ ] [Add relevant topic tags to your lesson repository][cdh-topic-tags].
* [ ] Fill in the fields marked `FIXME` in:
  * this README
  * [`_config.yml`](_config.yml)
  [ ] FIXME more steps here.

\*Your new website will be rendered at `https://uic-library.github.io/<workshop-repo-name>`. *To set the URL on GitHub, click the gear wheel button next to About on the right of the repository landing page. You will have to manually enter the url even though a repository at https://github.com/uic-library/workshop-repo-name/ will render automatically at the URL https://uic-library.github.io/<workshop-repo-name>.

## Optional but Recommended Steps
* [ ] Update this README with relevant information about your workshop (see example below)
  and delete this section
* [ ] FIXME add more



---------------------------

FIXME (other info that should go in the readme?)

## Description:
FIXME

## State of Workshop:
Still in development? Any major fixes to do?

## Creator(s)
FIXME (original creator)
FIXME
FIXME

This workshop was created using the template at https://github.com/uic-library/workshop-template 
