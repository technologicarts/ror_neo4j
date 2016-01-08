# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
ENV['MECAB_PATH']='/usr/lib64/libmecab.so.2'
require 'bundler/setup' if File.exist?(ENV['BUNDLE_GEMFILE'])
