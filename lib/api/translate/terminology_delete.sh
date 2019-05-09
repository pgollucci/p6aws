p6_aws_translate_terminology_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws translate delete-terminology --name $name "$@"
}
