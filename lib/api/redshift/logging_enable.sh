######################################################################
#<
#
# Function:
#      = p6_aws_redshift_logging_enable(cluster_identifier, bucket_name)
#
# Arg(s):
#    cluster_identifier - 
#    bucket_name - 
#
#
#>
######################################################################
p6_aws_redshift_logging_enable() {
    local cluster_identifier="$1"
    local bucket_name="$2"
    shift 2

    p6_run_write_cmd aws redshift enable-logging --cluster-identifier $cluster_identifier --bucket-name $bucket_name "$@"
}