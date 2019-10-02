######################################################################
#<
#
# Function:
#	p6_aws_cloudtrail_public_keys_list()
#
#>
######################################################################
p6_aws_cloudtrail_public_keys_list() {

    p6_run_read_cmd aws cloudtrail list-public-keys "$@"
}