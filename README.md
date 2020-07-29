<p align="center">
  <img src="https://typoci.com/images/typo-ci-logo.svg" alt="Typo CI Logo - It's a sword surrounded by brackets" width="96">
</p>

<h1 align="center">
  Typo CI - Marketing Site
</h1>

<p align="center">
Checks for spelling errors within commits by listening to webhooks from Heroku.
</p>

This is the site is used to promote [Typo CI](https://github.com/marketplace/typo-ci).

## Setup

1. `git clone git@github.com:TypoCI/Marketing.git`
2. `bundle && yarn`
3. `bundle exec middleman s`

Alternatively, you can also run this via docker-compose.

## Deploying

This is hosted on https://www.netlify.com/ - When commits are merged into `master`, they'll be deployed automatically.
