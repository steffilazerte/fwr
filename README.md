## Freshwater Research's Website

Created with Quarto (and optionally RStudio)

Quarto is a standalone program that works in an R pipeline but doesn't actually need R.

There is an R package, `quarto` for working with Quarto in R, and all things 
you do in the terminal can also be done using this package. It's completely up
to you whether you want to use R or not, but I would recommend working in RStudio
unless you have another editor you prefer.

### Getting setup

1. Update your RStudio (this comes with Quarto)
2. Make sure you have Quarto **v1.2+**
    - In R: `quarto::quarto_version()`
    - In the terminal `quarto -v`

3. If not, [download](https://quarto.org/docs/get-started/) and install it.

### Important files

- `.qmd` - These are pretty much like the `.md` files of before
- `_quarto.yml` - This is pretty much like the `_config.yml` of before and is
  how your site is setup
- `custom.scss` - This is how we tweak the colours and themes
- `fwr.Rproj` - This is the RStudio project file
- `README.md` - ME!
- `assets` - Folder containing extra things (don't actually have to be in a folder, but keeps things tidy)
- `docs` - Created when you render the website (this is what gets served as the actual site)
    - Note that I changed this from `_site` to `docs` to serve it on GitHub pages, 
    but it could easily be changed back
- `_extensions` - Created when you install any Quarto extensions (so we're not reliant on external software)
- Extra (`.gitignore`, `.quarto/`) for git and Quarto projects

### Workflow

A nice workflow is to have Quarto work in preview mode which automatically updates the website as you make changes and save the file. I like to have the preview open in a browser next to the code so I can see immediately what it looks like.

To work in preview mode, in the terminal:

`quarto preview`

To render without previewing

`quarto render`

Once a site has been rendered, the files you need to serve are in `_site`. You
can use GitHub or upload these files to your web hosting service.

There is a script, `publications_list.R` that is rendered in `index.qmd`.

**Note:** This should update the `publications_list.qmd` file on each render, 
automatically, *but* if a `publications_list.qmd` doesn't exist, you'll have to 
run `quarto render` twice (once to create it, and once to render it). 
After that you should be find, though. 

### Extensions

Here we use the `quarto-ext/fontawesome` extension which allows us to include
icons via short codes (see `contact.qmd` for example). 

- This is a short code that will create an envelop icon: `{{< fa envelop >}}`
- This is a short code that will create an ORCID icon (note `brands`): `{{< fa brands orchid >}}`

This extension is already installed, but if you wanted to install another one...

To install an extension, in the terminal do:

`quarto install extension quarto-ext/fontawesome`

To remove it do:

`quarto remove extension quarto-ext/fontawesome`


