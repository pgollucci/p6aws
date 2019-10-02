######################################################################
#<
#
# Function:
#	p6_aws_rds_db_clusters_describe()
#
#>
######################################################################
p6_aws_rds_db_clusters_describe() {

    p6_run_read_cmd aws rds describe-db-clusters "$@"
}