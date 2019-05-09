p6_aws_codestar_project_create() {
    local name="$1"
    local id="$2"
    shift 2

    p6_run_write_cmd aws codestar create-project --name $name --id $id "$@"
}
