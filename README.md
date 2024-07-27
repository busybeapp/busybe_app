# BusyBe Application

Buzz through your day with this easy to use todo and journaling app


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
 flutter drive \
  --driver=test_driver/integration_test.dart \
  --target=integration_test/count_test.dart
```
