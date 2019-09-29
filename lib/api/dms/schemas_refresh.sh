######################################################################
#<
#
# Function:
#      = p6_aws_dms_schemas_refresh(endpoint_arn, replication_instance_arn)
#
# Arg(s):
#    endpoint_arn - 
#    replication_instance_arn - 
#
#
#>
######################################################################
p6_aws_dms_schemas_refresh() {
    local endpoint_arn="$1"
    local replication_instance_arn="$2"
    shift 2

    p6_run_write_cmd aws dms refresh-schemas --endpoint-arn $endpoint_arn --replication-instance-arn $replication_instance_arn "$@"
}