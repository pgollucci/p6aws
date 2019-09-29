p6_aws_chime_disabled() {
        local account_id="$1"
        local bot_id="$2"
        shift 2

    cond_log_and_run aws chime update-bot --account-id $account_id --bot-id $bot_id --disabled "$@"
}

