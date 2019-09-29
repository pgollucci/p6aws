######################################################################
#<
#
# Function:
#      = p6_aws_iam_access_key_create()
#
#
#
#>
######################################################################
p6_aws_iam_access_key_create() {

    p6_run_write_cmd aws iam create-access-key "$@"
}