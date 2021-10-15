# The Digital Scholarship Hub Workshop Template

## How to use this template to set up a new workshop repository:

1.  Log in to GitHub.
    You must be logged in for the remaining steps to work.

2.  On this page (<https://github.com/carpentries/workshop-template>),
    click on the green "Use this template" button (top right). **Please _do not fork this repository directly on GitHub._**

3.  Choose UIC Libray as the owner for the repository UNLESS you are just  practicing or playing with the repository (Only Admins can delete repository's in the UIC Library's organization)

4. Please *do your work in the repository's `gh-pages` branch*, since that is what is
   [automatically published as a website by GitHub][github-project-pages].

5.  Please make the repository public internally to UIC Library, leave "Include all branches" unchecked, and click on "Create repository from template". You will be redirected to your new copy of the workshop template respository.


If you experience a problem, please [get in touch](#getting-and-giving-help).

## Customizing Your Website (Required Steps)

There are two ways of customizing your website. You can either:

- edit the files directly in GitHub using your web browser
- clone the repository on your computer and update the files locally

### Updating the files on GitHub in your web browser

1.  Go into your newly-created repository,
    which will be at `https://github.com/your_username/YYYY-MM-DD-site`.
    For example,
    if your username is `gvwilson`,
    the repository's URL will be `https://github.com/gvwilson/
    2016-12-01-oomza`.

2.  Ensure you are on the gh-pages branch by clicking on the branch under the drop
    down in the menu bar (see the note below):

    ![screenshot of this repository's GitHub page showing the "Branch" dropdown menu expanded with the "gh-pages" branch selected](fig/select-gh-pages-branch.png?raw=true)

### Working locally

> Note: you don't have to do this, if you have already updated your site using the web interface.


If you are already familiar with Git, you can clone the repository to your desktop, edit `index.md`,
`_config.yml`, and `schedule.html` following the instruction above there, and push your changes back to the repository.

```shell
git clone https://github.com/your_username/YYYY-MM-DD-site
```

In order to view your changes once you are done editing, if you have bundler installed (see the
[installation instructions below](#installing-software)), you can preview your site locally with:

```shell
make serve
```
and go to <http://0.0.0.0:4000> to preview your site.

Before pushing your changes to your repository, we recommend that you also check for any potential
issues with your site by running:

```shell
make workshop-check
```

Once you are satisfied with the edits to your site, commit and push the changes to your repository.
A few minutes later, you can go to the GitHub Pages URL for your workshop site and preview it. In the example above, this is `https://gvwilson.github.io/2016-12-01-oomza`. [The finished
page should look something like this](fig/completed-page.png?raw=true).


    ![screenshot of top menu bar for GitHub's file interface with the edit icon highlighted in the top right](fig/edit-index-file-menu-bar.png?raw=true)

    Editing hints are embedded in `index.md`,
    and full instructions are in [the customization instructions][customization].



4.  Edit `_config.yml` to customize certain site-wide variables, such as: `carpentry` (to tell your
    participants the lesson program for your workshop), `curriculum` and `flavor` for the
    curriculum  taught in your workshop, and `title` (overall title for all pages).

    Editing hints are embedded in `_config.yml`,
    and full instructions are in [the customization instructions][customization].


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
* [ ] If you're going to be developing lesson material for the first time
  according to our design principles,
  consider reading the [Carpentries Curriculum Development Handbook][cdh]
* [ ] Consult the [Lesson Example][lesson-example] website to find out more about
  working with the lesson template
* [ ] If you are planning to write your lesson in RMarkdown,
  [create a `main` branch and set this as the default branch in your repository settings][change-default-branch]
* [ ] Update this README with relevant information about your lesson
  and delete this section

\*Your new website will be rendered at `https://uic-library.github.io/<workshop-repo-name>`. *To set the URL on GitHub, click the gear wheel button next to About on the right of the repository landing page. You will have to manually enter the url even though a repository at https://github.com/uic-library/workshop-repo-name/ will render automatically at the URL https://uic-library.github.io/<workshop-repo-name>.

## Optional but Recommended Steps



### Update the content of the README file

You can change the `README.md` file in your website's repository, which contains these instructions,
so that it contains a short description of your workshop and a link to the workshop website.





## Installing Software

If you want to set up Jekyll so that you can preview changes on your own machine before pushing them
to GitHub, you must install the software described in the lesson example [setup
instructions](https://carpentries.github.io/lesson-example/setup.html#jekyll-setup-for-lesson-development).


