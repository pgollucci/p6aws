######################################################################
#<
#
# Function:
#	p6_aws_ecr_authorization_token_get()
#
#>
######################################################################
p6_aws_ecr_authorization_token_get() {

    p6_run_read_cmd aws ecr get-authorization-token "$@"
}