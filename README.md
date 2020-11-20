# JuliaLogos

A shell script for downloading Julia Org logos.

To submit an org here, add it to the `orgnames` file. I'll run the script and sync the logos periodically.

To run the script yourself, create a file called `github_username` and put your username in it.
Also create a `github_token` file with the Github token.

Often org names are just lower case, but it would be nice to use camel case when adding here,
so that they all look consistent. E.g. `JuliaLang`. GitHub will still pull the images from the URL,
but we'll have logo filenames that are consistent when we put them altogether.

The easiest way of combining these into a collection of logos is to open in a file browser, like `Finder`,
turn off displaing extensions and grabbing a screenshot. Contributions of automatically generating such
a collection are welcome. Bonus points if someone wants to do it automatically in CI. :-)
