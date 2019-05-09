p6_aws_lightsail_relational_database_master_user_password_get() {
    local relational_database_name="$1"
    shift 1

    p6_log_and_run aws lightsail get-relational-database-master-user-password --relational-database-name $relational_database_name "$@"
}
