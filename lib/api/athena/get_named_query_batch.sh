######################################################################
#<
#
# Function:
#      = p6_aws_athena_get_named_query_batch(named_query_ids)
#
# Arg(s):
#    named_query_ids - 
#
#
#>
######################################################################
p6_aws_athena_get_named_query_batch() {
    local named_query_ids="$1"
    shift 1

    p6_run_read_cmd aws athena batch-get-named-query --named-query-ids $named_query_ids "$@"
}