p6_aws_securityhub_enabled_products_for_import_list() {

    p6_run_read_cmd aws securityhub list-enabled-products-for-import "$@"
}
