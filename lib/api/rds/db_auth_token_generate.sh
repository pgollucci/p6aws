p6_aws_rds_db_auth_token_generate() {
    local hostname="$1"
    local port="$2"
    local username="$3"
    shift 3

    p6_run_write_cmd aws rds generate-db-auth-token --hostname $hostname --port $port --username $username "$@"
}
