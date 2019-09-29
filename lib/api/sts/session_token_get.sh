######################################################################
#<
#
# Function:
#      = p6_aws_sts_session_token_get()
#
#
#
#>
######################################################################
p6_aws_sts_session_token_get() {

    p6_run_read_cmd aws sts get-session-token "$@"
}