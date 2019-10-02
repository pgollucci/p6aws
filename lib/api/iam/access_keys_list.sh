######################################################################
#<
#
# Function:
#	p6_aws_iam_access_keys_list()
#
#>
######################################################################
p6_aws_iam_access_keys_list() {

    p6_run_read_cmd aws iam list-access-keys "$@"
}