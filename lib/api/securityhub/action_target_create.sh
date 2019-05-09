p6_aws_securityhub_action_target_create() {
    local name="$1"
    local description="$2"
    local id="$3"
    shift 3

    p6_run_read_cmd aws securityhub create-action-target --name $name --description $description --id $id "$@"
}
