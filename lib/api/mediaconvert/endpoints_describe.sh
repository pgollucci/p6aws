######################################################################
#<
#
# Function:
#      = p6_aws_mediaconvert_endpoints_describe()
#
#
#
#>
######################################################################
p6_aws_mediaconvert_endpoints_describe() {

    p6_run_read_cmd aws mediaconvert describe-endpoints "$@"
}