######################################################################
#<
#
# Function:
#      = p6_aws_redshift_resize_describe(cluster_identifier)
#
# Arg(s):
#    cluster_identifier - 
#
#
#>
######################################################################
p6_aws_redshift_resize_describe() {
    local cluster_identifier="$1"
    shift 1

    p6_run_read_cmd aws redshift describe-resize --cluster-identifier $cluster_identifier "$@"
}