# Test-Kitchen/DSC/PSRP/Nano...Oh my

This repo demonstrates converging a Windows Nano Server node using Test-Kitchen's DSC driver. The `Gemfile` pulls in soon to be released winrm-v2 branches that invoke remote Powershell using the PSRP protocol allowing it to work with nano.

The `.kitchen.yml` file includes a TP5 Windows Nano vagrant box with the DSC package installed.

## Prerequisites needed to converge

You must have a modern ruby environment installed with bundler. If you have the Chef-DK installed, you have that.

## Running the converge

```
bundle install
bundle exec kitchen verify
```

## Known issue with the Hyper-V vagrant provider box

If you are using Hyper-V, the very first time the Nano VM starts up, it will blue screen. It may do so several times. Keep rebooting and eventually it should come up and never blue screen again.
