---
title: Documentation
description: Configure Typo CI with the .typo-ci.yml file
---

# Documentation

Typo CI checks Pull Requests for spelling mistakes every time you push your code up to GitHub.

To configure how Typo CI will behave when checking your code, you can add a <code>.typo-ci.yml</code> file to the root of your project. Typo CI will look for this file on your PRs branch.

Below is a sample file:

```yml
# This is a sample .typo-ci.yml file, it's used to configure how Typo CI will behave.
# Add it to the root of your project and push it to github.
---

# What language dictionaries should it use? Currently Typo CI supports:
# de
# en
# en_GB
# es
# fr
# it
# pt
# pt_BR
dictionaries:
  - en
  - en_GB

# Any files/folders we should ignore?
excluded_files:
  - "vendor/**/*"
  - "node_modules/**/*"
  - "*.key"
  - "*.enc"
  - "*.min.css"
  - "*.css.map"
  - "*.min.js"
  - "*.js.map"
  - "*.mk"
  - "package-lock.json"
  - "yarn.lock"
  - "Gemfile.lock"
  - ".typo-ci.yml"

# Any typos we should ignore?
excluded_words:
  - typoci

# Would you like filenames to also be spellchecked?
spellcheck_filenames: true
```
