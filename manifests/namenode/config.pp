# == Class hadoop::namenode::config
#
# This class is called from hadoop::namenode.
#
class hadoop::namenode::config {
	contain hadoop::common::config
	contain hadoop::common::hdfs::config

	if $hadoop::realm {
		file { "/etc/security/keytab/nn.service.keytab":
			owner => "hdfs",
			group => "hdfs",
			mode => "0400",
			alias => "nn.service.keytab",
			before => File["hdfs-site.xml"],
		}
	}
}