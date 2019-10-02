######################################################################
#<
#
# Function:
#	p6_aws_sts_caller_identity_get()
#
#>
######################################################################
p6_aws_sts_caller_identity_get() {

    p6_run_read_cmd aws sts get-caller-identity "$@"
}