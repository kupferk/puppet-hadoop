class{'hadoop':
  realm => '',
}
include hadoop::common::config
include hadoop::common::yarn::config
include hadoop::historyserver::service
