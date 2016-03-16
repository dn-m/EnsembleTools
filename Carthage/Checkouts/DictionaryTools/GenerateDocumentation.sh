#!/bin/bash

jazzy \
  --clean \
  --author James Bean \
  --author_url http://jamesbean.info \
  --github_url https://github.com/dn-m/DictionaryTools \
  --module-version 0.2 \
  --module DictionaryTools \
  --root-url https://dn-m.github.io \
  --output ../site/DictionaryTools \
  --skip-undocumented \
  --theme fullwidth
