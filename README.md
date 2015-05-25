# Personal Puppet module for Boxen

A personal Puppet module is a great way to keep Boxen clean from many
pesonal manifests.
This means that adding a personal configuration is done by adding the module in
the `Puppetfile`.

```
github "filipebarcos", "1.0.0", :repo => "filipebarcos/puppet-filipebarcos"
```

## Personal module

I added a class named `filipebarcos` and files defined for installing `dotfiles`,
`applications` and `preferences`.
I also have a file for `all`. This would allow us to make sure that everything
gets installed in boxen when we `include filipebarcos::all` only modifying the
module version in the `Puppetfile`.

```
class filipebarcos
class filipebarcos::all
class filipebarcos::applications
class filipebarcos::dotfiles
class filipebarcos::preferences

```

## Tags

Remember to tag the version so that you can use it later in the `Puppetfile`.

```
git tag 1.0.0
git push --tags
```

## Get your own

Get the puppet-template from https://github.com/boxen/puppet-template and start
making your own Puppet module.

## Required Puppet Modules

* `boxen`

