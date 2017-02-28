#!/usr/bin/env bash
echo 'InShell'
echo $(pwd)
echo $RAILS_ENV
bundle exec unicorn -c config/containers/unicorn.rb -E $RAILS_ENV;
echo 'Done'
