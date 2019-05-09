p6_aws_sts_authorization_message_decode() {
    local encoded_message="$1"
    shift 1

    p6_log_or_run aws sts decode-authorization-message --encoded-message $encoded_message "$@"
}
