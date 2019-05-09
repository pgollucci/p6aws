p6_aws_glue_table_version_delete() {
    local database_name="$1"
    local table_name="$2"
    local version_id="$3"
    shift 3

    p6_run_write_cmd aws glue delete-table-version --database-name $database_name --table-name $table_name --version-id $version_id "$@"
}
