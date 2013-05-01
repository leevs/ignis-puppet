node 'puppetmaster.biocom.net' {
  include puppet
  include hosts
}

node 'web.biocom.net' {
  include hosts
}
