#!/bin/sh

rm -f .gitignore
mv .gitignore.sample .gitignore

rm -f package.json
mv package.json.sample package.json

rm -f README.md
touch README.md

yarn add -D \
  typescript \
  webpack \
  webpack-cli \
  webpack-dev-server \
  ts-loader \
  clean-webpack-plugin \
  html-webpack-plugin \
  tslint \
  prettier \
  tslint-config-prettier

yarn tsc --init \
  --target es5 \
  --module esnext \
  --lib esnext,dom \
  --moduleResolution node \
  --sourcemap \
  --noUnusedLocals \
  --noUnusedParameters \
  --noImplicitReturns \
  --noFallthroughCasesInSwitch
