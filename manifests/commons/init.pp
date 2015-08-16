$packages = [
    'zsh',
    'tree',
]

package { $packages:
    ensure => installed
}
