include python

# Ensure pip is present
class { 'python::pip':
  ensure => present,
}

# Install Flask 2.1.0
python::pip { 'flask':
  ensure   => '2.1.0',
  pkgname  => 'Flask',
  provider => 'pip',
}
