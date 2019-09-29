######################################################################
#<
#
# Function:
#      = p6_aws_kinesis_streams_list()
#
#
#
#>
######################################################################
p6_aws_kinesis_streams_list() {

    p6_run_read_cmd aws kinesis list-streams "$@"
}