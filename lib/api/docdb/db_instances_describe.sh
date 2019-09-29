######################################################################
#<
#
# Function:
#      = p6_aws_docdb_db_instances_describe()
#
#
#
#>
######################################################################
p6_aws_docdb_db_instances_describe() {

    p6_run_read_cmd aws docdb describe-db-instances "$@"
}