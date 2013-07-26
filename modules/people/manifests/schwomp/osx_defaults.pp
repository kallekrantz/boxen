class osx_config::system {

  boxen::osx_defaults {
    'Expand save panel by default':
      ensure => present,
      key    => 'NSNavPanelExpandedStateForSaveMode',
      domain => 'NSGlobalDomain',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Disable the “Are you sure you want to open this application?” dialog':
      ensure => present,
      key    => 'LSQuarantine',
      domain => 'com.apple.LaunchServices',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Disable Resume system-wide':
      ensure => present,
      key    => 'NSQuitAlwaysKeepsWindows',
      domain => 'NSGlobalDomain',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Disable automatic termination of inactive apps':
      ensure => present,
      key    => 'NSDisableAutomaticTermination',
      domain => 'NSGlobalDomain',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;
  }

}