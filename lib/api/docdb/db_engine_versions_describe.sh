######################################################################
#<
#
# Function:
#      = p6_aws_docdb_db_engine_versions_describe()
#
#
#
#>
######################################################################
p6_aws_docdb_db_engine_versions_describe() {

    p6_run_read_cmd aws docdb describe-db-engine-versions "$@"
}