# circleci-phpdbg

# Overview
Use phpdbg with CircleCI v1 php 5.6

# Description
Copy a prebuilt phpdbg binary on CircleCI.
Build option is @see [/source/make.sh](/source/make.sh)

# Requirement
* CircleCI
 * Ubuntu 14.04 (Trusty)
 * PHP 5.6.17 or 5.6.18 or 5.6.22

# HowTo
1. add circle.yml

```
test:
  pre:
   - curl -fsSL https://raw.githubusercontent.com/rela1470/circleci-phpdbg/master/install.sh| sh
```
   
# Demo
## circleCI v1 php5.6.17
* `time $(which phpunit) -c /your-path/phpunit.xml`
 * ![](https://raw.githubusercontent.com/rela1470/circleci-phpdbg/master/readme/5.6.17_before.png)
* `time $(which phpdbg) -qrr $(which phpunit) -c /your-path/phpunit.xml`
 * ![](https://raw.githubusercontent.com/rela1470/circleci-phpdbg/master/readme/5.6.17_after.png)
