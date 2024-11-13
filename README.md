# BusyBe App
[![test](https://github.com/busybeapp/app/actions/workflows/test.yml/badge.svg)](https://github.com/busybeapp/app/actions/workflows/test.yml)

Buzz through your day with this easy to use to-do and journaling app


## Pre commit
Install local pre-commit hook
```shell
pip install pre-commit
pre-commit install
```
Install commit-msg hook
```shell
pre-commit install -t commit-msg
```

## Integration tests

### iOS
#### Setup
Install Ruby
```shell
brew install ruby
brew link --overwrite ruby
echo 'export PATH="/opt/homebrew/opt/ruby/bin:$PATH"' >> ~/.zshrc
```
Install cocoapods
```shell
brew install cocoapods
brew link --overwrite cocoapods
```
Open iOS simulator
```shell
open -a Simulator
```

#### Run
```shell
 make it-test
```

## Mobile installation

### iOS
- Enable dev mode on your phone
- Build for target
```shell
flutter build ios
```
- Install
```shell
flutter run --release -d <device name>
```
