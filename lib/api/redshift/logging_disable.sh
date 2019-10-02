######################################################################
#<
#
# Function:
#	p6_aws_redshift_logging_disable(cluster_identifier)
#
#  Args:
#	cluster_identifier - 
#
#>
######################################################################
p6_aws_redshift_logging_disable() {
    local cluster_identifier="$1"
    shift 1

    p6_run_write_cmd aws redshift disable-logging --cluster-identifier $cluster_identifier "$@"
}