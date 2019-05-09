p6_aws_ds_schema_extension_start() {
    local directory_id="$1"
    local create_snapshot_before_schema_extension="$2"
    local ldif_content="$3"
    local description="$4"
    shift 4

    p6_log_or_run aws ds start-schema-extension --directory-id $directory_id --create-snapshot-before-schema-extension $create_snapshot_before_schema_extension --ldif-content $ldif_content --description $description "$@"
}
