# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ms_rest_azure/version'

Gem::Specification.new do |spec|
  spec.name          = 'ms_rest_azure'
  spec.version       = MsRestAzure::VERSION
  spec.authors       = 'Microsoft Corporation'
  spec.email         = 'azsdkteam@microsoft.com'

  spec.summary       = %q{Azure Client Library for Ruby.}
  spec.description   = %q{Azure Client Library for Ruby.}
  spec.homepage      = 'https://aka.ms/ms_rest_azure'
  spec.license       = 'MIT'
  spec.metadata      = {
    'bug_tracker_uri' => 'https://github.com/Azure/azure-sdk-for-ruby/issues',
    'changelog_uri' => 'https://github.com/Azure/azure-sdk-for-ruby/blob/master/runtime/ms_rest_azure/CHANGELOG.md',
    'documentation_uri' => 'https://azure.microsoft.com/en-us/develop/ruby/',
    'homepage_uri' => 'https://aka.ms/azure-sdk-for-ruby',
    'source_code_uri' => "https://github.com/Azure/azure-sdk-for-ruby/tree/ms_rest_azure-v#{MsRestAzure::VERSION}"
  }

  spec.files         = Dir["CHANGELOG.md", "README.md", "LICENSE.txt", "lib/**/*"]
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.3'

  spec.add_runtime_dependency 'concurrent-ruby', '~> 1.0'
  spec.add_runtime_dependency 'faraday', '>= 0.9', '<~ 2.13'
  spec.add_runtime_dependency 'faraday-cookie_jar', '~> 0.0.6'
  spec.add_runtime_dependency 'ms_rest', '~> 0.7.6'
end
