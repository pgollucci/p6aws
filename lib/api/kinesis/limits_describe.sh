######################################################################
#<
#
# Function:
#      = p6_aws_kinesis_limits_describe()
#
#
#
#>
######################################################################
p6_aws_kinesis_limits_describe() {

    p6_run_read_cmd aws kinesis describe-limits "$@"
}