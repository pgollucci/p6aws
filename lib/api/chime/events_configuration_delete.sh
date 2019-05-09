p6_aws_chime_events_configuration_delete() {
    local account_id="$1"
    local bot_id="$2"
    shift 2

    p6_run_write_cmd aws chime delete-events-configuration --account-id $account_id --bot-id $bot_id "$@"
}
