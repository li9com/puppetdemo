# This is a demo puppet module
class puppetdemo {
  file { '/etc/demo':
    mode    => '0644',
    owner   => 'root',
    content => 'This is a demo module'
  }

  user { 'demo':
    uid => 9999,
  }
}
