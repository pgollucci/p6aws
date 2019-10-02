######################################################################
#<
#
# Function:
#	p6_aws_dynamodbstreams_records_get(shard_iterator)
#
#  Args:
#	shard_iterator - 
#
#>
######################################################################
p6_aws_dynamodbstreams_records_get() {
    local shard_iterator="$1"
    shift 1

    p6_run_read_cmd aws dynamodbstreams get-records --shard-iterator $shard_iterator "$@"
}