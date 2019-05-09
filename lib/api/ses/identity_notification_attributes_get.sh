p6_aws_ses_identity_notification_attributes_get() {
    local identities="$1"
    shift 1

    p6_run_read_cmd aws ses get-identity-notification-attributes --identities $identities "$@"
}
