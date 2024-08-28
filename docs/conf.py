# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = "Karku's Kanttekeningen"
copyright = "2023, carlovo"
author = "carlovo"

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = ["myst_parser", "sphinx_favicon"]

templates_path = ["_templates"]
exclude_patterns = ["_build", "Thumbs.db", ".DS_Store"]

language = "nl"

# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = "sphinx_book_theme"
html_static_path = ["_static"]

html_theme_options = {
    "logo": {
        "text": "Karku's Kanttekeningen",
        "image_light": "_static/karku-logo-2-crop-4c-alpha-light.png",
        "image_dark": "_static/karku-logo-2-crop-4c-alpha-dark.png",
    },
}

favicons = [
    "karku-logo-2-4c-alpha-16x16.ico",
    "karku-logo-2-4c-alpha-32x32.ico",
]
