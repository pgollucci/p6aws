######################################################################
#<
#
# Function:
#      = p6_aws_kinesis_record_put(stream_name, data, partition_key)
#
# Arg(s):
#    stream_name - 
#    data - 
#    partition_key - 
#
#
#>
######################################################################
p6_aws_kinesis_record_put() {
    local stream_name="$1"
    local data="$2"
    local partition_key="$3"
    shift 3

    p6_run_write_cmd aws kinesis put-record --stream-name $stream_name --data $data --partition-key $partition_key "$@"
}