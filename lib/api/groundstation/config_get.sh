p6_aws_groundstation_config_get() {
    local config_id="$1"
    local config_type="$2"
    shift 2

    p6_run_read_cmd aws groundstation get-config --config-id $config_id --config-type $config_type "$@"
}
