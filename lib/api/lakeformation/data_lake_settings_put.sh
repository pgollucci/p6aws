p6_aws_lakeformation_data_lake_settings_put() {
    local data_lake_settings="$1"
    shift 1

    p6_run_write_cmd aws lakeformation put-data-lake-settings --data-lake-settings $data_lake_settings "$@"
}
