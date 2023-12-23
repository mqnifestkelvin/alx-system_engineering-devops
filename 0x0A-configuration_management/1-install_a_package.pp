# Install puppet-lint package
package { 'python3-pip':
  ensure => installed,
  require => Package['python3'],
}

package { 'puppet-lint':
  ensure   => '2.1.0',
  provider => 'gem',
}
