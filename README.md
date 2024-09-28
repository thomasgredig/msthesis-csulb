## CSULB M.S. Thesis Template

This is an unofficial Quarto `msthesis-csulb` template for the California State University Long Beach (CSULB) M.S. thesis created by Thomas Gredig. This template is based on the Quarto markdown language, which provides simplicity, readability, transparency, and embedded computation.

-   Creates PDF format for thesis submission
-   Creates HTML format
-   Reproducible figures with embedded code

## Installation

Install the [Quarto CLI](https://quarto.org), then install the template from the terminal:

``` bash
quarto use template thomasgredig/msthesis-csulb
```

You are prompted to create a new subfolder with the M.S. thesis template files. You should also have [R](https://www.r-project.org/) and [Python](https://www.python.org/) or [Julia](https://julialang.org/) installed, use `quarto check` to verify. Next, open the project with [RStudio](https://posit.co/download/rstudio-desktop/) (or text editor or [VSC](https://code.visualstudio.com/)). You should also have [nanoAFMr package](https://github.com/thomasgredig/nanoAFMr) installed in R.

Render both HTML and msthesis-csulb PDF formats. If both file formats render, you can continue and start with your thesis.

You can render HTML output as follows:

``` bash
quarto render index.qmd --to html
```

The PDF format is rendered with

``` bash
quarto render index.qmd --to msthesis-csulb-pdf
```

## Format Options

Update the thesis title, author, thesis advisor, committee members, and graduation date in `_quarto.yml`.

Next, update the `abstract` and `acknowledgements` pages in the `frontmatter` directory.

Go to the folder `chapters` and add 4 sections with the introduction, experimental methods, results and analysis, and the summary.

Update the `references.bib` file in the chapters folder.

Add supplemental materials into the `appendix` folder.

## Dependencies

If you encounter errors, verify that your LaTeX installation is up-to-date. Install jupyter in Python, enable Quarto extension in VSC.

``` bash
pip3 install jupyter jupyter-cache
```
