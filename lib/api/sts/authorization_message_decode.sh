######################################################################
#<
#
# Function:
#      = p6_aws_sts_authorization_message_decode(encoded_message)
#
# Arg(s):
#    encoded_message - 
#
#
#>
######################################################################
p6_aws_sts_authorization_message_decode() {
    local encoded_message="$1"
    shift 1

    p6_run_write_cmd aws sts decode-authorization-message --encoded-message $encoded_message "$@"
}