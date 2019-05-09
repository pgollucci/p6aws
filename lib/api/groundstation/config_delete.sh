p6_aws_groundstation_config_delete() {
    local config_id="$1"
    local config_type="$2"
    shift 2

    p6_run_write_cmd aws groundstation delete-config --config-id $config_id --config-type $config_type "$@"
}
