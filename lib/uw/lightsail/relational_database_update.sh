aws_lightsail_master_user_password() {
        local relational_database_name="$1"
        shift 1

    cond_log_and_run aws lightsail update-relational-database --relational-database-name $relational_database_name --rotate-master-user-password "$@"
}

aws_lightsail_backup_retention() {
        local relational_database_name="$1"
        shift 1

    cond_log_and_run aws lightsail update-relational-database --relational-database-name $relational_database_name --enable-backup-retention "$@"
}

aws_lightsail_backup_retention() {
        local relational_database_name="$1"
        shift 1

    cond_log_and_run aws lightsail update-relational-database --relational-database-name $relational_database_name --disable-backup-retention "$@"
}

aws_lightsail_accessible() {
        local relational_database_name="$1"
        shift 1

    cond_log_and_run aws lightsail update-relational-database --relational-database-name $relational_database_name --publicly-accessible "$@"
}

aws_lightsail_immediately() {
        local relational_database_name="$1"
        shift 1

    cond_log_and_run aws lightsail update-relational-database --relational-database-name $relational_database_name --apply-immediately "$@"
}

