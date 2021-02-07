# computer.mads-hartmann.com

How I setup my computer.

## With docker

```sh
docker-compose up --build --renew-anon-volumes
```

## Without docker

This depends on having [Ruby](https://www.ruby-lang.org/en/) and [Bundler](https://rubygems.org/gems/bundler) installed locally.

```sh
bundle install
bundle exec jekyll serve \
    --watch \
    --drafts \
    --source computer.mads-hartmann.com
```
