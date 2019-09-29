######################################################################
#<
#
# Function:
#      = p6_aws_dynamodb_time_to_live_update(table_name, time_to_live_specification)
#
# Arg(s):
#    table_name - 
#    time_to_live_specification - 
#
#
#>
######################################################################
p6_aws_dynamodb_time_to_live_update() {
    local table_name="$1"
    local time_to_live_specification="$2"
    shift 2

    p6_run_write_cmd aws dynamodb update-time-to-live --table-name $table_name --time-to-live-specification $time_to_live_specification "$@"
}