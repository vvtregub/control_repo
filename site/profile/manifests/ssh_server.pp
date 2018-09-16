class profile::ssh_server {
    package {'openssh-server':
        ensure => present,
        }
    service {'ssh':
        ensure => 'running',
        enable => 'true',
        }
    ssh_authorized_key {'root@master.puppet.vm':
        ensure => present,
        user   => 'root',
        type   => 'ssh-rsa',
        key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDQlq0j6hAHaJhny8kuDppaEregfMp0ezxjsH+J09G4mvk4+MtgLzTLXnr6/sYcctRimcpyn0BWrKqkKXDM9nLOmLDgVP1HiE8v3wjqweqYwEcUqBYmIh8HS+cQaj7nAReB/zC9C17q8jNxn3bvYno7GGpoek1cORZhhsz18ybUQXwneyBi8YJmHGRVNS+2v8BD1G3AFUYrGZYqvwFivlCIyE1gtEO65MpdG+7Op5kbF07TAf2qRYoyqeeLVd6SFxBtnSx2u57XbZmOV9Jx6+byFeBQ7U1xRZ+IM9dv6CNzQ2N0/2Hw9C7JcjHlTItVsd3js0JOUpYSJkN2a1lbhLkB',
        }
}        
