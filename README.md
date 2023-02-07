## Freshwater Research's Website

Created with Quarto (and optionally RStudio)

Quarto is a standalone program that works in an R pipeline but doesn't actually need R.

There is an R package, `quarto` for working with Quarto in R.

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
- `_site` - Created when you render the website (this is what gets served as the actual site)
- `_extensions` - Created when you install any Quarto extensions (so we're not reliant on external software)

### Workflow

A nice workflow is to have Quarto work in preview mode which automatically updates the website as you make changes and save the file. I like to have the preview open in a browser next to the code so I can see immediately what it looks like.

To work in preview mode, in the terminal:

`quarto preview`

To render without previewing

`quarto render`

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


