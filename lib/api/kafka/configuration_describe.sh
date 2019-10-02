######################################################################
#<
#
# Function:
#	p6_aws_kafka_configuration_describe(arn)
#
#  Args:
#	arn - 
#
#>
######################################################################
p6_aws_kafka_configuration_describe() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws kafka describe-configuration --arn $arn "$@"
}