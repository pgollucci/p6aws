######################################################################
#<
#
# Function:
#	p6_aws_rds_global_cluster_modify()
#
#>
######################################################################
p6_aws_rds_global_cluster_modify() {

    p6_run_write_cmd aws rds modify-global-cluster "$@"
}