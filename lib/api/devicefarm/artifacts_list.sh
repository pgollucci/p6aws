p6_aws_devicefarm_artifacts_list() {
    local arn="$1"
    local type="$2"
    shift 2

    p6_run_read_cmd aws devicefarm list-artifacts --arn $arn --type $type "$@"
}
