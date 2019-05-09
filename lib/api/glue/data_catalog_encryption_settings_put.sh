p6_aws_glue_data_catalog_encryption_settings_put() {
    local data_catalog_encryption_settings="$1"
    shift 1

    p6_run_write_cmd aws glue put-data-catalog-encryption-settings --data-catalog-encryption-settings $data_catalog_encryption_settings "$@"
}
