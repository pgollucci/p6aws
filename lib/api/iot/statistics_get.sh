######################################################################
#<
#
# Function:
#      = p6_aws_iot_statistics_get(query_string)
#
# Arg(s):
#    query_string - 
#
#
#>
######################################################################
p6_aws_iot_statistics_get() {
    local query_string="$1"
    shift 1

    p6_run_read_cmd aws iot get-statistics --query-string $query_string "$@"
}