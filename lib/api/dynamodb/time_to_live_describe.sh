######################################################################
#<
#
# Function:
#      = p6_aws_dynamodb_time_to_live_describe(table_name)
#
# Arg(s):
#    table_name - 
#
#
#>
######################################################################
p6_aws_dynamodb_time_to_live_describe() {
    local table_name="$1"
    shift 1

    p6_run_read_cmd aws dynamodb describe-time-to-live --table-name $table_name "$@"
}