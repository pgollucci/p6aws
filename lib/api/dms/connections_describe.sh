######################################################################
#<
#
# Function:
#      = p6_aws_dms_connections_describe()
#
#
#
#>
######################################################################
p6_aws_dms_connections_describe() {

    p6_run_read_cmd aws dms describe-connections "$@"
}