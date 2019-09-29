p6_aws_mq_minor_version_upgrade() {
        local broker_id="$1"
        shift 1

    cond_log_and_run aws mq update-broker --broker-id $broker_id --auto-minor-version-upgrade "$@"
}

