######################################################################
#<
#
# Function:
#      = p6_aws_neptune_db_engine_versions_describe()
#
#
#
#>
######################################################################
p6_aws_neptune_db_engine_versions_describe() {

    p6_run_read_cmd aws neptune describe-db-engine-versions "$@"
}