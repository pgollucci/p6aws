######################################################################
#<
#
# Function:
#      = p6_aws_elasticache_snapshots_describe()
#
#
#
#>
######################################################################
p6_aws_elasticache_snapshots_describe() {

    p6_run_read_cmd aws elasticache describe-snapshots "$@"
}