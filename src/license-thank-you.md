---
title: GitHub Action License Key
layout: default
---

# Thank you for purchasing a license

Thank you for supporting Typo CI by purchasing a license, it helps support the ongoing development of the project and is really appreciated.

You should have just received an email with the subject line _"You bought Typo CI License!"_, if not please [contact me](https://typoci.com/contact) so I can resolve any errors.

Within that email, you should have a license key. Update your `.github/workflows/spellcheck.yml` with the following, replacing `ADD-YOUR-LICENSE-KEY-HERE` with your key & you're good to go:

{% raw %}
```yml
# Add to: .github/workflows/spellcheck.yml
name: Typo CI

on:
  push:
    branches:
      - master
  pull_request:
jobs:
  spellcheck:
    name: Typo CI
    runs-on: ubuntu-latest
    timeout-minutes: 4
    if: "!contains(github.event.head_commit.message, '[ci skip]')"
    steps:
    - name: Typo CI (GitHub Action)
      uses: typoci/spellcheck-action@master
      with:
        typo_ci_license_key: ADD-YOUR-LICENSE-KEY-HERE
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
{% endraw %}
