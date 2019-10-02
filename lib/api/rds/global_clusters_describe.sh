######################################################################
#<
#
# Function:
#	p6_aws_rds_global_clusters_describe()
#
#>
######################################################################
p6_aws_rds_global_clusters_describe() {

    p6_run_read_cmd aws rds describe-global-clusters "$@"
}