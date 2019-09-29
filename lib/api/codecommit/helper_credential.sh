######################################################################
#<
#
# Function:
#      = p6_aws_codecommit_helper_credential()
#
#
#
#>
######################################################################
p6_aws_codecommit_helper_credential() {

    p6_run_write_cmd aws codecommit credential-helper "$@"
}