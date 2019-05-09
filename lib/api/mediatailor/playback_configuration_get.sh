p6_aws_mediatailor_playback_configuration_get() {
    local name="$1"
    shift 1

    p6_log_and_run aws mediatailor get-playback-configuration --name $name "$@"
}
