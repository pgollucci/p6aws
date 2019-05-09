p6_aws_mq_configuration_revisions_list() {
    local configuration_id="$1"
    shift 1

    p6_log_and_run aws mq list-configuration-revisions --configuration-id $configuration_id "$@"
}
