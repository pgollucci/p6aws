######################################################################
#<
#
# Function:
#      = p6_aws_dms_connection_test(replication_instance_arn, endpoint_arn)
#
# Arg(s):
#    replication_instance_arn - 
#    endpoint_arn - 
#
#
#>
######################################################################
p6_aws_dms_connection_test() {
    local replication_instance_arn="$1"
    local endpoint_arn="$2"
    shift 2

    p6_run_write_cmd aws dms test-connection --replication-instance-arn $replication_instance_arn --endpoint-arn $endpoint_arn "$@"
}