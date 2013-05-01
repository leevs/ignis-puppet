node 'web.biocom.net' {
  include puppet
  include hosts
  file { 'tmp/hello': 
    content => "Hello World\n",
  }
}