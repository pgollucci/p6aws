######################################################################
#<
#
# Function: p6_aws_svc_sts_whoami()
#
#>
######################################################################
p6_aws_svc_sts_whoami() {

    p6_aws_cli_cmd sts get-caller-identity

    p6_return_void
}