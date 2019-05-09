p6_aws_servicecatalog_launch_paths_list() {
    local product_id="$1"
    shift 1

    p6_run_read_cmd aws servicecatalog list-launch-paths --product-id $product_id "$@"
}
