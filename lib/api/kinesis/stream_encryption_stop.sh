######################################################################
#<
#
# Function:
#	p6_aws_kinesis_stream_encryption_stop(stream_name, encryption_type, key_id)
#
#  Args:
#	stream_name - 
#	encryption_type - 
#	key_id - 
#
#>
######################################################################
p6_aws_kinesis_stream_encryption_stop() {
    local stream_name="$1"
    local encryption_type="$2"
    local key_id="$3"
    shift 3

    p6_run_write_cmd aws kinesis stop-stream-encryption --stream-name $stream_name --encryption-type $encryption_type --key-id $key_id "$@"
}