package { "httpd":
    provider => "yum",
    ensure   => "installed",
}

service { "httpd":
    name    => "httpd",
    ensure  => running,
    require => Package["httpd"],
}
