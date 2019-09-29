######################################################################
#<
#
# Function:
#      = p6_aws_kinesis_shards_list()
#
#
#
#>
######################################################################
p6_aws_kinesis_shards_list() {

    p6_run_read_cmd aws kinesis list-shards "$@"
}