p6_aws_mediatailor_playback_configuration_delete() {
    local name="$1"
    shift 1

    p6_log_or_run aws mediatailor delete-playback-configuration --name $name "$@"
}
