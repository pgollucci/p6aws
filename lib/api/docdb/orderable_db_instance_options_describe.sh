######################################################################
#<
#
# Function:
#      = p6_aws_docdb_orderable_db_instance_options_describe(engine)
#
# Arg(s):
#    engine - 
#
#
#>
######################################################################
p6_aws_docdb_orderable_db_instance_options_describe() {
    local engine="$1"
    shift 1

    p6_run_read_cmd aws docdb describe-orderable-db-instance-options --engine $engine "$@"
}