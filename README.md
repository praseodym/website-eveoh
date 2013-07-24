# Eveoh website

[![devDependency Status](https://david-dm.org/eveoh/website-eveoh/dev-status.png)](https://david-dm.org/eveoh/website-eveoh#info=devDependencies)

It's our corporate website!

## Install prerequisites
* Update/install rubygems

```
gem update --system
```

* Install bundler

```
gem install bundler
```

* Update Ruby gems

```
bundle install
```

* Install NodeJS and packages

```
brew install node
npm install
```

## Compile the site with Nanoc
```
nanoc compile
```

When changes are not visible, empty the `/output` and `/tmp` folders.

## Autocompile and view the site
```
nanoc autocompile
```

The site is now available at http://localhost:3000/.

## Deploy to staging
```
nanoc deploy --target staging
```

## Deploy to production
```
nanoc deploy --target prod
```

