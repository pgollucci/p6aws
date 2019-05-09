p6_aws_securityhub_enabled_products_for_import_list() {

    p6_log_and_run aws securityhub list-enabled-products-for-import "$@"
}
