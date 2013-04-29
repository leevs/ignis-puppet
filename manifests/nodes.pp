node 'test' {
  include puppet
  
  file { 'tmp/hello': 
    content => "Hello World\n",
  }
}