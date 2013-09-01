name              "wordpress"
maintainer        "Drew J. Sonne"
maintainer_email  "drew.sonne@gmail.com"
license           "Apache 2.0"
description       "Sets permissions for wordpress installations"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.1"

recipe "wordpress::deploy", "Configures wordpress"