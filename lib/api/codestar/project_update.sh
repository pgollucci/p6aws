p6_aws_codestar_project_update() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws codestar update-project --id $id "$@"
}
