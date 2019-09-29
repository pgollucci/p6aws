######################################################################
#<
#
# Function:
#      = p6_aws_iam_open_id_connect_providers_list()
#
#
#
#>
######################################################################
p6_aws_iam_open_id_connect_providers_list() {

    p6_run_read_cmd aws iam list-open-id-connect-providers "$@"
}