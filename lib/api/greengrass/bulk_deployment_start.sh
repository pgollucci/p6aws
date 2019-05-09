p6_aws_greengrass_bulk_deployment_start() {
    local execution_role_arn="$1"
    local input_file_uri="$2"
    shift 2

    p6_run_write_cmd aws greengrass start-bulk-deployment --execution-role-arn $execution_role_arn --input-file-uri $input_file_uri "$@"
}
