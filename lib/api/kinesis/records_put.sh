######################################################################
#<
#
# Function:
#      = p6_aws_kinesis_records_put(records, stream_name)
#
# Arg(s):
#    records - 
#    stream_name - 
#
#
#>
######################################################################
p6_aws_kinesis_records_put() {
    local records="$1"
    local stream_name="$2"
    shift 2

    p6_run_write_cmd aws kinesis put-records --records $records --stream-name $stream_name "$@"
}