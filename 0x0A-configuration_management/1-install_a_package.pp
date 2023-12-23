# Ensure Python and pip are installed
package { 'python3':
  ensure => installed,
}

package { 'python3-pip':
  ensure => installed,
  require => Package['python3'],
}

# Install Flask version 2.1.0 using pip3
exec { 'install-flask':
  command => 'pip3 install flask==2.1.0',
  unless  => 'pip3 freeze | grep -Fxq Flask==2.1.0',
  require => Package['python3-pip'],
}
