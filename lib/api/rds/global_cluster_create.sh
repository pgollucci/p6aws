######################################################################
#<
#
# Function:
#	p6_aws_rds_global_cluster_create()
#
#>
######################################################################
p6_aws_rds_global_cluster_create() {

    p6_run_write_cmd aws rds create-global-cluster "$@"
}