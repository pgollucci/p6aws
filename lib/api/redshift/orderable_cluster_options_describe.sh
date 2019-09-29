######################################################################
#<
#
# Function:
#      = p6_aws_redshift_orderable_cluster_options_describe()
#
#
#
#>
######################################################################
p6_aws_redshift_orderable_cluster_options_describe() {

    p6_run_read_cmd aws redshift describe-orderable-cluster-options "$@"
}